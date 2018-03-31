class Employee < ApplicationRecord
  # belongs_to :employee_type
  # belongs_to :employee_status
  has_many :reservations

  def full_name2
    self.id.to_s + ' ' + self.FirstName + ' ' + self.LastName
  end
end
