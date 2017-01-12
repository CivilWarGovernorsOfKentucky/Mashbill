require 'rails_helper'

RSpec.describe "deeds/edit", type: :view do
  before(:each) do
    @deed = assign(:deed, Deed.create!(
      :deed_type => "MyString",
      :user => nil,
      :document => nil,
      :entity => nil,
      :relationship => nil
    ))
  end

  it "renders the edit deed form" do
    render

    assert_select "form[action=?][method=?]", deed_path(@deed), "post" do

      assert_select "input#deed_deed_type[name=?]", "deed[deed_type]"

      assert_select "input#deed_user_id[name=?]", "deed[user_id]"

      assert_select "input#deed_document_id[name=?]", "deed[document_id]"

      assert_select "input#deed_entity_id[name=?]", "deed[entity_id]"

      assert_select "input#deed_relationship_id[name=?]", "deed[relationship_id]"
    end
  end
end
