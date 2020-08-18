require 'rails_helper'
require 'tei_annotator'
require 'text_transporter'
require 'sample_tei'

RSpec.describe TeiAnnotator, type: :model do
  before(:each) do
    @text_transporter = double('TextTransporter')
    allow(@text_transporter).to receive(:fetch).and_return(KYR00010030072)
    @user = double('User')
    @annotator = TeiAnnotator.new(@text_transporter)
  end
  
  it "should work with a mock" do
    @text_transporter.fetch.should eq(KYR00010030072)    
  end
  
  context "easy entities" do
    before(:each) do
      @doc = Nokogiri::XML(KYR00010030072)
#      @entity = double('Entity')
      @entity = Entity.new
      @verbatim = "Dr Capes"
    end
    def para(index=3, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should do simple replace" do
      @annotator.search_and_replace(@doc, para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)      
    end

    it "should not double-replace" do
      @annotator.search_and_replace(@doc, para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)      
      @annotator.search_and_replace(@doc, para, @verbatim, @entity)    
      para.to_xml.should eq(marked_up)      
    end

    def test_type_tag(type, tag)
      @entity.entity_type = type
      @annotator.search_and_replace(@doc, para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <#{tag}>Dr Capes</#{tag}> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)    
    end

    it "should create persName tags" do
      test_type_tag(Entity::Type::PERSON, 'persName')
    end
    it "should create placeName tags" do
      test_type_tag(Entity::Type::PLACE, 'placeName')
    end
    it "should create orgName tags" do
      test_type_tag(Entity::Type::ORGANIZATION, 'orgName')
    end

    it "should add entity ref IDs" do
      @entity.id = 123
      @entity.ref_id = 'DEADBEEF'
      @annotator.search_and_replace(@doc, para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity ref=\"cwgk:DEADBEEF\">Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)      
    end

    

    it "should parse locators" do
      @annotator.target_element_and_index("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]")[1].should eq(2)
      @annotator.target_element_and_index("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]/span[1]")[1].should eq(1)
    end
    
    it "should fetch appropriate paragraphs" do
      third_p = @doc.search('text/body/p')[2]
      second_p = @doc.search('text/body/p')[1]
      annotation = double(Annotation)

      allow(annotation).to receive(:start_container).and_return("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]")
      @annotator.target_element(@doc, annotation).should eq(third_p)

      allow(annotation).to receive(:start_container).and_return("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]/span[1]")
      @annotator.target_element(@doc, annotation).should eq(second_p)      
    end
    
    it "should replace from an annotation or two" do
      annotation = Annotation.new
      annotation.entity = @entity
      annotation.verbatim = @verbatim
      annotation.start_container = "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"
      
      @annotator.apply_annotation(@doc, annotation)
      
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)      
      
      annotation.verbatim = "City"
      @annotator.apply_annotation(@doc, annotation)
      
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this <entity>City</entity> Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      para.to_xml.should eq(marked_up)      
    end
    
    
  end

  PARA_3 = "<p>Such was the case at Dr Capes of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
  PARA_3_MARKUP = "<p>Such was the case at <persName ref=\"cwgk:capes_id\">Dr Capes</persName> of this <placeName ref=\"cwgk:louisville_id\">City</placeName> Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
  context "document record" do
    before(:each) do
      @document = Document.new(:cwgk_id => 'KYR0001-003-0072')
      
      annotation1 = Annotation.new(:verbatim => 'Dr Capes', :start_container => "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]")
      entity1 = Entity.new(:entity_type => Entity::Type::PERSON, :ref_id => 'capes_id', :id => 123, :name => "Capes")
      entity1.save!
      annotation1.entity = entity1 
      annotation1.save!
      @document.annotations << annotation1
      
      annotation2 = Annotation.new(:verbatim => 'City', :start_container => "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]")
      entity2 = Entity.create(:entity_type => Entity::Type::PLACE, :ref_id => 'louisville_id', :id => 1234, :name => "Louisville" )
      entity2.save!
      annotation2.entity = entity2 
      annotation2.save!
      @document.annotations << annotation2    
      
      @document.save!  
    end

    it "should replace text" do
      expect(@text_transporter).to receive(:save).with('KYR0001-003-0072', KYR00010030072.sub(PARA_3,PARA_3_MARKUP), @user)
      @annotator.apply_annotations(@document, @user)     
    end    

    it "should not replace text twice" do
      allow(@text_transporter).to receive(:fetch).and_return(KYR00010030072.sub(PARA_3,PARA_3_MARKUP))
      expect(@text_transporter).to receive(:save).with('KYR0001-003-0072', KYR00010030072.sub(PARA_3,PARA_3_MARKUP), @user)
      @annotator.apply_annotations(@document, @user)     
    end

    
  end

  context "nested tags" do
    # The first paragraph element begins with
    # U. S. Com<hi rend="underline"><hi rend="sup">s</hi></hi> office at Paducah
    # We want to attempt to mark up "Coms", which contains a tag on the last letter

    before(:each) do
      @doc = Nokogiri::XML(KYR00010030072)
      @entity = Entity.new
    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end
    
    it "should do simple replace with prefix" do
      verbatim = "Coms"
      @annotator.search_and_replace(@doc, para, verbatim, @entity)
      marked_up = '<p>U. S. <entity>Com<hi rend="underline"><hi rend="sup">s</hi></hi></entity> office at Paducah'
      para.to_xml.should match /^#{marked_up}/      
    end

    it "should do simple replace with node alone" do
      verbatim = "s"
      @annotator.search_and_replace(@doc, para, verbatim, @entity)
      marked_up = '<p>U. S. Com<entity><hi rend="underline"><hi rend="sup">s</hi></hi></entity> office at Paducah'
      para.to_xml.should match /^#{marked_up}/      
    end

    it "should do simple replace with suffix" do
      verbatim = "s office"
      @annotator.search_and_replace(@doc, para, verbatim, @entity)
      marked_up = '<p>U. S. Com<entity><hi rend="underline"><hi rend="sup">s</hi></hi> office</entity> at Paducah'
      para.to_xml.should match /^#{marked_up}/      
    end

    it "should do simple replace with prefix and suffix" do
      verbatim = "Coms office"
      @annotator.search_and_replace(@doc, para, verbatim, @entity)
      marked_up = '<p>U. S. <entity>Com<hi rend="underline"><hi rend="sup">s</hi></hi> office</entity> at Paducah'
      para.to_xml.should match /^#{marked_up}/      
    end

    it "should replace within nested tags" do
      verbatim = "armed"
      @annotator.search_and_replace(@doc, para(2), verbatim, @entity)
      marked_up = '<p>When <entity><hi rend="underline">armed</hi></entity><hi rend="underline"> negroes</hi> are permited to go with impunity'
      para(2).to_xml.should match /^#{marked_up}/      
    end

    it "should not delete elements in a failed match" do
      verbatim = "not a match"
      @annotator.search_and_replace(@doc, para, verbatim, @entity)
      marked_up = '<p>U. S. Com<hi rend="underline"><hi rend="sup">s</hi></hi> office at Paducah'
      para.to_xml.should match /^#{marked_up}/      
    end
  end

  context "real world KYR-0004-101-0014" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00041010014)
      @document = Document.new(:cwgk_id => 'KYR0004-101-0014')
      KYR00041010014_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00041010014_ANNOTATIONS_ATTRIBUTES.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00041010014)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end

    it "should not strip attributes" do
      @annotations.each_with_index do |annotation,i|
        @annotator.apply_annotation(@doc, annotation)
        para(3).to_xml.split("\n").first.should match(/underline/m)
      end

    end

    context "Frankfort" do
      before(:each) do
        @annotator.apply_annotation(@doc, @annotations[0])
        @annotator.apply_annotation(@doc, @annotations[1])
        @annotation= @annotations[2]
        @entity = @annotation.entity
      end

      it "should replace correctly" do
        verbatim = @annotation.verbatim
        @annotator.search_and_replace(@doc, para, verbatim, @entity)
        marked_up = "<p>Headquarters <orgName ref=\"cwgk:O00000870\">Kentucky Volunteers</orgName>,\n<lb/>Adjutant=General\'s Office,\n<lb/><placeName ref=\"cwgk:P00000308\">Frankfort</placeName>, <date when=\"1865-04-05\">April 5<hi rend=\"sup\">:</hi> 1865</date>.\n<lb/>General Orders\n<lb/>N<hi rend=\"sup\">o.</hi> 9.</p>"
        marked_up.should eq para.to_xml      
      end
    end

    context "Maj W. H. Hays" do
      before(:each) do
        0.upto(9) { |i| @annotator.apply_annotation(@doc, @annotations[i])}
        @annotation= @annotations[10]
        @entity = @annotation.entity
      end

      it "should replace correctly" do
        verbatim = @annotation.verbatim
        @annotator.search_and_replace(@doc, para(3), verbatim, @entity)
        marked_up = "<p><persName ref=\"cwgk:N00009430\"><hi rend=\"underline\">Maj. C. W. Quiggens\n</hi></persName><persName ref=\"cwgk:N00001581\"><hi rend=\"underline\"><lb/>Maj W. H. Hays</hi></persName><hi rend=\"underline\">\n</hi><persName ref=\"cwgk:N00009339\"><hi rend=\"underline\"><lb/>Lieut W. E. Cox</hi></persName> <hi rend=\"underline\">Judge Advocate</hi></p>"
        marked_up.should eq para(3).to_xml      
      end
    end

    context "Lieut W. E. Cox" do
      before(:each) do
        0.upto(8) { |i| @annotator.apply_annotation(@doc, @annotations[i])}
        @annotation= @annotations[9]
        @entity = @annotation.entity
      end

      it "should replace correctly" do
        verbatim = @annotation.verbatim
        @annotator.search_and_replace(@doc, para(3), verbatim, @entity)
        marked_up = "<p><persName ref=\"cwgk:N00009430\"><hi rend=\"underline\">Maj. C. W. Quiggens\n</hi></persName><hi rend=\"underline\"><lb/>Maj W. H. Hays\n</hi><persName ref=\"cwgk:N00009339\"><hi rend=\"underline\"><lb/>Lieut W. E. Cox</hi></persName> <hi rend=\"underline\">Judge Advocate</hi></p>"
        marked_up.should eq para(3).to_xml      
      end
    end

    context "Maj. C. W. Quiggens" do
      before(:each) do
        0.upto(7) { |i| @annotator.apply_annotation(@doc, @annotations[i])}
        @annotation= @annotations[8]
        @entity = @annotation.entity
      end

      it "should replace correctly" do
        verbatim = @annotation.verbatim
        @annotator.search_and_replace(@doc, para(3), verbatim, @entity)
        marked_up = "<p><persName ref=\"cwgk:N00009430\"><hi rend=\"underline\">Maj. C. W. Quiggens\n</hi></persName><hi rend=\"underline\"><lb/>Maj W. H. Hays\n<lb/>Lieut W. E. Cox</hi> <hi rend=\"underline\">Judge Advocate</hi></p>"
        marked_up.should eq para(3).to_xml      
      end
    end


    context "Governor" do
      before(:each) do
        0.upto(4) { |i| @annotator.apply_annotation(@doc, @annotations[i])}
        @annotation= @annotations[5]
        @entity = @annotation.entity
      end

      it "should replace correctly" do
        verbatim = @annotation.verbatim
        @annotator.search_and_replace(@doc, para(7), verbatim, @entity)
        marked_up = "<p>By order of the <persName ref=\"cwgk:N001000\">Governor</persName>\n<lb/>D, W, Lindsey\n<lb/>Adj' Gen<hi rend=\"sup\">l</hi> Ky</p>"
        marked_up.should eq para(7).to_xml      
      end
    end

    context "Adjutant=General's Office" do
      before(:each) do
        @annotation= @annotations[3]
      end

      it "should find a target" do
        element = @annotator.target_element(@doc, @annotation)
        unless element
          element = @annotator.fallback_element(@doc, @annotation)
          unless element
            element = @annotator.last_fallback_element(@doc, @annotation)
          end
        end
        element.should_not eq(nil)
      end

      it "should replace" do
        verbatim = "not a match"
        @annotator.search_and_replace(@doc, para, verbatim, @entity)
        marked_up = "<p>Headquarters Kentucky Volunteers,\n<lb/>Adjutant=General\'s Office,\n<lb/>Frankfort, <date when=\"1865-04-05\">April 5<hi rend=\"sup\">:</hi> 1865</date>.\n<lb/>General Orders\n<lb/>N<hi rend=\"sup\">o.</hi> 9.</p>"
        marked_up.should eq para.to_xml      
      end
    end

  end


  context "real world KYR-0001-006-0066" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00010060066)
      @document = Document.new(:cwgk_id => 'KYR0001-006-0066')
      KYR00010060066_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00010060066_ANNOTATIONS_ATTRIBUTES.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00010060066)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end


    it "should actually change the mark-up" do
      @annotations.each_with_index do |annotation,i|
        before_xml = @doc.to_xml
        @annotator.apply_annotation(@doc, annotation)
        after_xml = @doc.to_xml
        after_xml.should_not eq(before_xml)
      end
    end

  end
  
  context "real world KYR-0002-222-0021" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00022220021)
      @document = Document.new(:cwgk_id => 'KYR0002-222-0021')
      KYR00022220021_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00022220021_ANNOTATIONS_ATTRIBUTES.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00022220021)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end


    it "should actually change the mark-up" do
      @annotations.each_with_index do |annotation,i|
        before_xml = @doc.search('body').first.to_xml
        @annotator.apply_annotation(@doc, annotation)
        after_xml = @doc.search('body').first.to_xml
        after_xml.should_not eq(before_xml)
      end
    end

    context "Ky Vols" do
      before(:each) do
        0.upto(2) { |i| @annotator.apply_annotation(@doc, @annotations[i])}
        @annotation= @annotations[3]
        @entity = @annotation.entity
      end

      it "should replace the correct element" do
        doc_xml = @doc.to_xml
        @annotator.apply_annotation(@doc, @annotation)
        marked_up = "<p>Approved\n<lb/>By order of the <persName ref=\"cwgk:N001004\">Governor</persName>\n<lb/><persName ref=\"cwgk:N00000228\">Jno W Finnell</persName>\n<lb/>Adjt Genl <orgName ref=\"cwgk:O00000870\">Ky Vols</orgName></p>"
        @doc.to_xml.should match marked_up
      end
    end



  end


  context "real world KYR-0001-004-0300" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00010040300)
      @document = Document.new(:cwgk_id => 'KYR0001-004-0300')
      KYR00010040300_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00010040300_ANNOTATIONS.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00010040300)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end


    it "should actually change the mark-up" do
      @annotations.each_with_index do |annotation,i|
        before_xml = @doc.to_xml
        @annotator.apply_annotation(@doc, annotation)
        after_xml = @doc.to_xml
        after_xml.should_not eq(before_xml)
      end
    end

    it "should not duplicate tags when repeated" do
      @doc = Nokogiri::XML(KYR00010040300_V2)
      @annotations[0..10].each_with_index do |annotation,i|
        before_xml = @doc.to_xml
        @annotator.apply_annotation(@doc, annotation)
        after_xml = @doc.to_xml
        after_xml.should eq(before_xml)
      end
    end

  end
  
  context "real world KYR-0001-004-0310" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00010040310)
      @document = Document.new(:cwgk_id => 'KYR0001-004-0310')
      KYR00010040310_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00010040310_ANNOTATIONS.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00010040310)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end


    it "should actually change the mark-up" do
      @annotations.each_with_index do |annotation,i|
        before_xml = @doc.to_xml
        @annotator.apply_annotation(@doc, annotation)
        after_xml = @doc.to_xml
        after_xml.should_not eq(before_xml)
      end
    end
  end


  context "real world KYR-0001-004-0079" do

    before(:each) do
      @doc = Nokogiri::XML(KYR00010040079)
      @document = Document.new(:cwgk_id => 'KYR0001-004-0079')
      KYR00010040079_ENTITIES.each {|e| Entity.create!(e)}
      @annotations = KYR00010040079_ANNOTATIONS.map{|h| Annotation.new(h)}
      @annotations.each { |a| @document.annotations << a }
      @document.save!
      @annotations.each {|a| a.save!}


      @text_transporter = double('TextTransporter')
      allow(@text_transporter).to receive(:fetch).and_return(KYR00010040310)
      @user = double('User')
      @annotator = TeiAnnotator.new(@text_transporter)

    end

    def para(index=0, locator='text/body/p')
      @doc.search(locator)[index]
    end

    it "should not corrupt the text" do
      @annotations.each_with_index do |annotation,i|
        before_text = @doc.text
        @annotator.apply_annotation(@doc, annotation)
        after_text = @doc.text
        after_text.should eq(before_text)
      end
    end
  end


end

