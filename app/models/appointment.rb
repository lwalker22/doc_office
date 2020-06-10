class Appointment < ApplicationRecord
  belongs_to :patient, dependent: :destroy
  belongs_to :doctor, dependent: :destroy
  validates: :date, :time, :apptype, presence: true

  def appt_details
    "#{self.date}"
    "\n"
    "#{self.time}"
  end
end