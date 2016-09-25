class Meeting < ApplicationRecord
  has_many :meeting_person_roles
  has_many :people,through: :meeting_person_roles
  has_many :roles,through: :meeting_person_roles
  has_many :meeting_organisation_people
  has_many :organisations,through: :meeting_organisation_people
end
