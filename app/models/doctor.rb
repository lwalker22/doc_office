class Doctor < ApplicationRecord
  has_many :appointments, dependednt: :destroy
  has_many :patients, through: :appointments
  validates :first_name, :last_name, :specialty, presence: true
end
