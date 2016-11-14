require 'rails_helper'

RSpec.describe "race_descriptions/edit", type: :view do
  before(:each) do
    @race_description = assign(:race_description, RaceDescription.create!(
      :race_description => "MyString"
    ))
  end

  it "renders the edit race_description form" do
    render

    assert_select "form[action=?][method=?]", race_description_path(@race_description), "post" do

      assert_select "input#race_description_race_description[name=?]", "race_description[race_description]"
    end
  end
end
