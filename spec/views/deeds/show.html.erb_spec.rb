require 'rails_helper'

RSpec.describe "deeds/show", type: :view do
  before(:each) do
    @deed = assign(:deed, Deed.create!(
      :deed_type => "Deed Type",
      :user => nil,
      :document => nil,
      :entity => nil,
      :relationship => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Deed Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
