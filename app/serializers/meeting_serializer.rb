class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :day, :month, :year, :purpose_of_meeting
end
