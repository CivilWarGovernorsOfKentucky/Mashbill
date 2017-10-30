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
      @para = @doc.search('text/body/p')[3]
#      @entity = double('Entity')
      @entity = Entity.new
      @verbatim = "Dr Capes"
    end
    
    it "should do simple replace" do
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
    end

    it "should not double-replace" do
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      @para.to_xml.should eq(marked_up)      
    end

    def test_type_tag(type, tag)
      @entity.entity_type = type
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <#{tag}>Dr Capes</#{tag}> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)            
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
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity ref=\"cwgk:DEADBEEF\">Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
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
      @para.to_xml.should eq(marked_up)      
      
      annotation.verbatim = "City"
      @annotator.apply_annotation(@doc, annotation)
      
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this <entity>City</entity> Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
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
    
  end

  
end

