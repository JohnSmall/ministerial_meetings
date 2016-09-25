require 'rails_helper'

RSpec.describe "meetings/index", type: :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        :day => 2,
        :month => 3,
        :year => 4,
        :purpose_of_meeting => "Purpose Of Meeting"
      ),
      Meeting.create!(
        :day => 2,
        :month => 3,
        :year => 4,
        :purpose_of_meeting => "Purpose Of Meeting"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Purpose Of Meeting".to_s, :count => 2
  end
end
