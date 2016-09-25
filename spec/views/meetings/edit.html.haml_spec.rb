require 'rails_helper'

RSpec.describe "meetings/edit", type: :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :day => 1,
      :month => 1,
      :year => 1,
      :purpose_of_meeting => "MyString"
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input#meeting_day[name=?]", "meeting[day]"

      assert_select "input#meeting_month[name=?]", "meeting[month]"

      assert_select "input#meeting_year[name=?]", "meeting[year]"

      assert_select "input#meeting_purpose_of_meeting[name=?]", "meeting[purpose_of_meeting]"
    end
  end
end
