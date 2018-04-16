class Home < ApplicationRecord

  def self.calendar
    Reservation.select("reservations.id, reservations.date, CONCAT(customers.firstname || ' ' || customers.lastname) AS name, products.product_name AS productname").joins(:product).joins(:customer)
  end
  def self.today_count
    Reservation.where(:date => Date.today).count(:date)
  end
  def self.today_countupdate
    Reservation.where(:date => Date.today).where(:updated_at => Date.today).where(:reservestatusid => 2).count(:created_at)
  end
end