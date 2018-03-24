class ReservationStatus < ApplicationRecord
  acts_as_paranoid
  has_many :reservations
end
