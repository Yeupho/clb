class Home < ApplicationRecord

  def self.calendar
    Reservation.select("reservations.id, reservations.date, CONCAT(customers.firstname || ' ' || customers.lastname) AS name, products.product_name AS productname").joins(:product).joins(:customer)
  end
  def self.today_count
    Reservation.where(:date => Date.today).count(:date)
  end

  def self.today_pending
    Reservation.where(:updated_at => Date.today.all_day).where(:reservestatusid => 2).count(:updated_at)
  end

  def self.today_complete
    Reservation.where(:updated_at => Date.today.all_day).where(:reservestatusid => 3).count(:updated_at)
  end
end