class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :wikipedia_entry
end
