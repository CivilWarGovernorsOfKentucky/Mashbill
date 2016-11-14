require 'rails_helper'

RSpec.describe "race_descriptions/index", type: :view do
  before(:each) do
    assign(:race_descriptions, [
      RaceDescription.create!(
        :race_description => "Race Description"
      ),
      RaceDescription.create!(
        :race_description => "Race Description"
      )
    ])
  end

  it "renders a list of race_descriptions" do
    render
    assert_select "tr>td", :text => "Race Description".to_s, :count => 2
  end
end
