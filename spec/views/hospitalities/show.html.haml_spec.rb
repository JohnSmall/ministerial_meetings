require 'rails_helper'

RSpec.describe "hospitalities/show", type: :view do
  before(:each) do
    @hospitality = assign(:hospitality, Hospitality.create!(
      :day => 2,
      :month => 3,
      :year => 4,
      :type_of_hospitality => "Type Of Hospitality"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Type Of Hospitality/)
  end
end
