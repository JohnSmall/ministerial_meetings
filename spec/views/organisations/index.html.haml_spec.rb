require 'rails_helper'

RSpec.describe "organisations/index", type: :view do
  before(:each) do
    assign(:organisations, [
      Organisation.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry"
      ),
      Organisation.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry"
      )
    ])
  end

  it "renders a list of organisations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Wikipedia Entry".to_s, :count => 2
  end
end
