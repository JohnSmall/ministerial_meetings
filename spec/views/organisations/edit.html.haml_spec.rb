require 'rails_helper'

RSpec.describe "organisations/edit", type: :view do
  before(:each) do
    @organisation = assign(:organisation, Organisation.create!(
      :name => "MyString",
      :wikipedia_entry => "MyString"
    ))
  end

  it "renders the edit organisation form" do
    render

    assert_select "form[action=?][method=?]", organisation_path(@organisation), "post" do

      assert_select "input#organisation_name[name=?]", "organisation[name]"

      assert_select "input#organisation_wikipedia_entry[name=?]", "organisation[wikipedia_entry]"
    end
  end
end
