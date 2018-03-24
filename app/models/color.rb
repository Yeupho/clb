class Color < ApplicationRecord
  acts_as_paranoid
  has_many :reservations
end
