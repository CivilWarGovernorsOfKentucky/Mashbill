require 'rails_helper'

RSpec.describe "race_descriptions/new", type: :view do
  before(:each) do
    assign(:race_description, RaceDescription.new(
      :race_description => "MyString"
    ))
  end

  it "renders new race_description form" do
    render

    assert_select "form[action=?][method=?]", race_descriptions_path, "post" do

      assert_select "input#race_description_race_description[name=?]", "race_description[race_description]"
    end
  end
end
