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
  
  it "should replace easy entities" do
    annotator = TeiAnnotator.new(@text_transporter)
    para = @doc.search('text/body/p')[3]
    entity = double('Entity')
    verbatim = "Dr Capes"
    annotator.search_and_replace(@doc, para, verbatim, entity)    
    marked_up = "<p>Such was the case at <entity>Dr Capes</entity> of this City Yesterday morning and there is not a more <hi rend=\"underline\">Loyal true Patriot</hi> than D<hi rend=\"sup\">r</hi> Cope on the american continent</p>"
    para.to_xml.should eq(marked_up)
  end
end

