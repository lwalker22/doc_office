class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments 
  validates :first_name, :last_name, :height, :weight, :gender, presence: true


  def patient_info
    "#{self.first_name} #{self.last_name}"
    "\n"
    "#{self.height} #{self.weight}"
    "\n"
    "#{self.gender}"
  end
end