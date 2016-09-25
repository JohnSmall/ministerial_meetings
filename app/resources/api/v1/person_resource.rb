class Api::V1::PersonResource < JSONAPI::Resource
  attributes :name,:wikipedia_entry
  has_many :roles
end
