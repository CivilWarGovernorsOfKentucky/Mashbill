require 'rails_helper'

RSpec.describe "race_descriptions/show", type: :view do
  before(:each) do
    @race_description = assign(:race_description, RaceDescription.create!(
      :race_description => "Race Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Race Description/)
  end
end
