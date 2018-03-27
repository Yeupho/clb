class Customer < ApplicationRecord

  belongs_to :country
  belongs_to :customer_status

  has_many :reservations
end
