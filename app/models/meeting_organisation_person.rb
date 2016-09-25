class MeetingOrganisationPerson < ApplicationRecord
  belongs_to :meeting
  belongs_to :organisation
  belongs_to :person
end
