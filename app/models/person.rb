class Person < ApplicationRecord
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :organisations
  validates :name,presence: true
end
