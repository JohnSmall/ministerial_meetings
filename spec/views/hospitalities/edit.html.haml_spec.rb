require 'rails_helper'

RSpec.describe "hospitalities/edit", type: :view do
  before(:each) do
    @hospitality = assign(:hospitality, Hospitality.create!(
      :day => 1,
      :month => 1,
      :year => 1,
      :type_of_hospitality => "MyString"
    ))
  end

  it "renders the edit hospitality form" do
    render

    assert_select "form[action=?][method=?]", hospitality_path(@hospitality), "post" do

      assert_select "input#hospitality_day[name=?]", "hospitality[day]"

      assert_select "input#hospitality_month[name=?]", "hospitality[month]"

      assert_select "input#hospitality_year[name=?]", "hospitality[year]"

      assert_select "input#hospitality_type_of_hospitality[name=?]", "hospitality[type_of_hospitality]"
    end
  end
end
