class Customer < ApplicationRecord
  acts_as_paranoid
  belongs_to :country
  belongs_to :customer_status

  has_many :reservations
end
