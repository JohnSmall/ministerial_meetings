class HospitalityPersonRole < ApplicationRecord
  belongs_to :hospitality
  belongs_to :person
  belongs_to :role
end
