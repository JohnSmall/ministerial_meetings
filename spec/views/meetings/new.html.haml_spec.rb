require 'rails_helper'

RSpec.describe "meetings/new", type: :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      :day => 1,
      :month => 1,
      :year => 1,
      :purpose_of_meeting => "MyString"
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input#meeting_day[name=?]", "meeting[day]"

      assert_select "input#meeting_month[name=?]", "meeting[month]"

      assert_select "input#meeting_year[name=?]", "meeting[year]"

      assert_select "input#meeting_purpose_of_meeting[name=?]", "meeting[purpose_of_meeting]"
    end
  end
end
