class Customer < ApplicationRecord

  belongs_to :country, :class_name => Country, :foreign_key => 'country_id', optional: true
  belongs_to :state, :class_name => State, :foreign_key => 'state_id', optional: true
  belongs_to :customer_status, :class_name => CustomerStatus, :foreign_key => 'customerstatusid', optional: true

  has_many :reservations

  def full_customer_name
      ' ' + self.firstname + ' ' + self.lastname
  end
end

