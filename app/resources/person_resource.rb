class PersonResource < JSONAPI::Resource
  attributes :name,:wikipedia_entry
  has_many :roles
end
