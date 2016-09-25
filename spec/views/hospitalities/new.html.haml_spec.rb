require 'rails_helper'

RSpec.describe "hospitalities/new", type: :view do
  before(:each) do
    assign(:hospitality, Hospitality.new(
      :day => 1,
      :month => 1,
      :year => 1,
      :type_of_hospitality => "MyString"
    ))
  end

  it "renders new hospitality form" do
    render

    assert_select "form[action=?][method=?]", hospitalities_path, "post" do

      assert_select "input#hospitality_day[name=?]", "hospitality[day]"

      assert_select "input#hospitality_month[name=?]", "hospitality[month]"

      assert_select "input#hospitality_year[name=?]", "hospitality[year]"

      assert_select "input#hospitality_type_of_hospitality[name=?]", "hospitality[type_of_hospitality]"
    end
  end
end
