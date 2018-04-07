class Reservation < ApplicationRecord

  belongs_to :product, :class_name => Product, :foreign_key => 'productid', optional: true
  belongs_to :customer, :class_name => Customer, :foreign_key => 'customerid', optional: true
  belongs_to :size, :class_name => Size, :foreign_key => 'sizeid', optional: true
  belongs_to :reservation_status, :class_name => ReservationStatus, :foreign_key => 'reservestatusid', optional: true
  belongs_to :employee, :class_name => Employee, :foreign_key => 'employeeid', optional: true

  before_create :set_foo_to_now
  def set_foo_to_now
    self.date = DateTime.now
  end

  def self.reservationsactive
      # CustomerEvent.select("customer_events.id, event_id, customers.first_name,
      #   customers.last_name, kids_painting, adults_painting, number_in_party")
      #   .joins(:customer)
      #   .order("customers.first_name ASC")
      #
    Reservation.select('date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, customers.id')
                        .joins('INNER JOIN products ON products.id = reservations.customerid')
                        .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
                        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
                        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
                        .where('reservestatusid = ?', params[:reservestatusid]).limit(100)



  end
  # Reservation.select('date, products.product_name AS producta, products.imageurl AS imageurl, sizes.sizename, reservation_statuses.statusname AS resstat, customers.id').joins('JOIN products ON products.id = reservations.customerid').joins('JOIN sizes ON sizes.id = reservations.sizeid').joins('JOIN customers ON customers.id = reservations.customerid').joins('JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid').where('reservestatusid = ?', params[:reservestatusid]).limit(100)
  def self.countorder
    Reservations.group_by_day(:date, format: '%a').count
  end
end
