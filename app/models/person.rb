class Person < ApplicationRecord
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :organisations
  validates :name,presence: true
  has_many :meeting_person_roles
  has_many :meeting_organisation_people
  has_many :meetings,through: :meeting_person_roles
  has_many :organisations,through: :meeting_organisation_people
  has_many :hospitality_person_roles
  has_many :hospitality_organisation_people
  has_many :hospitalities,through: :hospitality_person_roles
end
