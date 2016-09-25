class Api::V1::RoleResource < JSONAPI::Resource
  attributes :name,:wikipedia_entry
  has_many :people
end
