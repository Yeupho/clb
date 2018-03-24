class Reservation < ApplicationRecord
  acts_as_paranoid
  belongs_to :product
  belongs_to :customer
  belongs_to :heel
  belongs_to :reservation_status
end
