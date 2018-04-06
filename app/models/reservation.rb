class Reservation < ApplicationRecord

  # belongs_to :product
  belongs_to :customer
  # belongs_to :heel
  belongs_to :reservation_status
  # belongs_to :color

  def self.reservations
      # CustomerEvent.select("customer_events.id, event_id, customers.first_name,
      #   customers.last_name, kids_painting, adults_painting, number_in_party")
      #   .joins(:customer)
      #   .order("customers.first_name ASC")
      #
    Reservation.select('date, customer.firstname, customer.lastname,reservestatusid,
      productid, colorid').joins(:customer)
              .order('customers.firstname ASC')
  end

  def self.countorder
    Reservations.group_by_day(:date, format: '%a').count
  end
end
