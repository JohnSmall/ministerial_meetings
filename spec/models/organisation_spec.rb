require 'rails_helper'

RSpec.describe Organisation, type: :model do
  it {should have_db_column(:name).of_type(:string)}
  it {should validate_presence_of(:name)}
  it {should have_db_column(:wikipedia_entry).of_type(:string)}
  it {should have_and_belong_to_many(:people)}
end
