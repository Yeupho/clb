class Employee < ApplicationRecord
  belongs_to :employee_type
  belongs_to :employee_status
  has_many :reservations

end
