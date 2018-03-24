class Employee < ApplicationRecord
  acts_as_paranoid
  belongs_to :employee_type
  belongs_to :employee_status
  has_many :reservations

end
