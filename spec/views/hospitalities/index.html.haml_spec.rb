require 'rails_helper'

RSpec.describe "hospitalities/index", type: :view do
  before(:each) do
    assign(:hospitalities, [
      Hospitality.create!(
        :day => 2,
        :month => 3,
        :year => 4,
        :type_of_hospitality => "Type Of Hospitality"
      ),
      Hospitality.create!(
        :day => 2,
        :month => 3,
        :year => 4,
        :type_of_hospitality => "Type Of Hospitality"
      )
    ])
  end

  it "renders a list of hospitalities" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Type Of Hospitality".to_s, :count => 2
  end
end
