class Customer < ApplicationRecord

  belongs_to :country, :class_name => Country, :foreign_key => 'country_id', optional: true
  belongs_to :customer_status, :class_name => CustomerStatus, :foreign_key => 'customerstatusid', optional: true
  belongs_to :state, :class_name => State, :foreign_key => 'state_id', optional: true


  has_many :reservations

  def full_customer_name
      ' ' + self.firstname + ' ' + self.lastname + ' ' + self.phone
  end
  def full_name2
    ' ' + self.firstname + ' ' + self.lastname + ' ' + self.phone
  end

  def full_name3
    ' ' + self.firstname + ' ' + self.lastname
  end

  def self.next(cust)
    where('id < ?', cust.id).last
  end

  def self.prev(cust)
    where('id > ?', cust.id).first
  end

  def self.transact1(id)
    Reservation.select('date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, customers.id')
        .joins('INNER JOIN products ON products.id = reservations.customerid')
        .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
        .where('customers.id = ?', params[id]).where('reservations.reservestatusid = 1').limit(100)
  end

  def self.transact
    Reservation.select('customers.id AS id, date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber as num, customers.id')
        .joins('INNER JOIN products ON products.id = reservations.productid')
        .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
  end
end

