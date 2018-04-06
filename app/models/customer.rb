class Customer < ApplicationRecord

  belongs_to :country
  belongs_to :state
  # belongs_to :customer_status

  has_many :reservations

  def full_customer_name
      ' ' + self.FirstName + ' ' + self.LastName
  end
end
