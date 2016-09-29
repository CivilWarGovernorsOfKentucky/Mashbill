require 'rails_helper'
require 'tei_annotator'
require 'text_transporter'
require 'sample_tei'

RSpec.describe TeiAnnotator, type: :model do
  before(:each) do
    @text_transporter = double('TextTransporter')
    allow(@text_transporter).to receive(:fetch).and_return(KYR00010030072)
    @doc = Nokogiri::XML(KYR00010030072)
  end
  
  it "should work with a mock" do
    annotator = TeiAnnotator.new(@text_transporter)
    @text_transporter.fetch.should eq(KYR00010030072)    
  end
  
  context "easy entities" do
    before(:each) do
      @annotator = TeiAnnotator.new(@text_transporter)
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
      @entity.ref_id = 'DEADBEEF'
      @annotator.search_and_replace(@doc, @para, @verbatim, @entity)    
      marked_up = "<p>Such was the case at <entity ref=\"DEADBEEF\">Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
    end

    it "should parse locators" do
      @annotator.target_paragraph_number("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]").should eq(3)
      @annotator.target_paragraph_number("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]/span[1]").should eq(2)
    end
    
    it "should fetch appropriate paragraphs" do
      para3 = @doc.search('text/body/p')[3]
      para2 = @doc.search('text/body/p')[2]
      annotation = double(Annotation)

      allow(annotation).to receive(:start_container).and_return("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]")
      @annotator.target_paragraph(@doc, annotation).should eq(para3)

      allow(annotation).to receive(:start_container).and_return("/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]/span[1]")
      @annotator.target_paragraph(@doc, annotation).should eq(para2)      
    end
    
    it "should replace from an annotation or two" do
      annotation = Annotation.new
      annotation.entity = @entity
      annotation.verbatim = @verbatim
      annotation.start_container = "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]"
      
      @annotator.apply_annotation(@doc, annotation)
      
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
      
      annotation.verbatim = "City"
      @annotator.apply_annotation(@doc, annotation)
      
      marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this <entity>City</entity> Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
      @para.to_xml.should eq(marked_up)      
    end
    
  end


  
end

