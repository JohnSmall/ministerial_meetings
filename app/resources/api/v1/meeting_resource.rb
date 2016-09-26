class Api::V1::MeetingResource < JSONAPI::Resource
  attributes :month,:year,:purpose_of_meeting
  has_many :people
  has_many :organisations
end
