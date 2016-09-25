require 'rails_helper'

RSpec.describe "organisations/new", type: :view do
  before(:each) do
    assign(:organisation, Organisation.new(
      :name => "MyString",
      :wikipedia_entry => "MyString"
    ))
  end

  it "renders new organisation form" do
    render

    assert_select "form[action=?][method=?]", organisations_path, "post" do

      assert_select "input#organisation_name[name=?]", "organisation[name]"

      assert_select "input#organisation_wikipedia_entry[name=?]", "organisation[wikipedia_entry]"
    end
  end
end
