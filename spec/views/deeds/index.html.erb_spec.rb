require 'rails_helper'

RSpec.describe "deeds/index", type: :view do
  before(:each) do
    assign(:deeds, [
      Deed.create!(
        :deed_type => "Deed Type",
        :user => nil,
        :document => nil,
        :entity => nil,
        :relationship => nil
      ),
      Deed.create!(
        :deed_type => "Deed Type",
        :user => nil,
        :document => nil,
        :entity => nil,
        :relationship => nil
      )
    ])
  end

  it "renders a list of deeds" do
    render
    assert_select "tr>td", :text => "Deed Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
