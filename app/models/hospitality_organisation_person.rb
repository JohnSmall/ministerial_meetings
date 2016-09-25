class HospitalityOrganisationPerson < ApplicationRecord
  belongs_to :hospitality
  belongs_to :organisation
  belongs_to :person
end
