require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry"
      ),
      Person.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Wikipedia Entry".to_s, :count => 2
  end
end
