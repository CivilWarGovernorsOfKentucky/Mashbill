require 'rails_helper'
require 'tei_annotator'
require 'text_transporter'

SAMPLE_TEI = "doc goes here"


RSpec.describe TeiAnnotator, type: :model do
  before(:each) do
    @text_transporter = double('TextTransporter')
    @text_transporter.stub(:fetch).and_return(SAMPLE_TEI)    
  end
  
  it "should not explode on a mock" do
    annotator = TeiAnnotator.new(@text_transporter)
    @text_transporter.fetch.should eq(SAMPLE_TEI)
    
  end
end
