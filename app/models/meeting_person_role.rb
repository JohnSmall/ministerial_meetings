class MeetingPersonRole < ApplicationRecord
  belongs_to :meeting
  belongs_to :person
  belongs_to :role
end
