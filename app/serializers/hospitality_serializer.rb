class HospitalitySerializer < ActiveModel::Serializer
  attributes :id, :day, :month, :year, :type_of_hospitality
end
