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

  #   before_validation on: [:create, :update] do
  #   self.date = Date.today
  # end


  # before_validation on: [:create, :update] do
  #   self.date = Date.today
  # end

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
                        .joins('INNER JOIN customers ON cfustomers.id = reservations.customerid')
                        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
                        .where('reservestatusid = ?', params[:reservestatusid]).limit(100)
  end

  def self.mostprodemp
    Reservation.find_by_sql("SELECT employees.id, CONCAT(employees.firstname || ' ' || employees.lastname) AS fullname, COUNT(*) FROM reservations INNER JOIN employees ON employees.id = reservations.employeeid GROUP BY fullname, employees.id ORDER BY COUNT(*) DESC LIMIT 1")
    # Reservation.select('employees.firstname AS name, COUNT(reservations.id)').joins('INNER JOIN employees ON employees.id = reservations.employeeid').group('employees.firstname')
  end

  # Reservation.select('date, products.product_name AS producta, products.imageurl AS imageurl, sizes.sizename, reservation_statuses.statusname AS resstat, customers.id').joins('JOIN products ON products.id = reservations.customerid').joins('JOIN sizes ON sizes.id = reservations.sizeid').joins('JOIN customers ON customers.id = reservations.customerid').joins('JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid').where('reservestatusid = ?', params[:reservestatusid]).limit(100)
  def self.countorder
    Reservation.group_by_day(:date, format: '%a').count
  end

  def self.countweeks
    Reservation.group_by_day_of_week(:date, format: '%a').count
  end

  def self.countmonths
    Reservation.group_by_month(:date, format: "%b %Y").count
  end

  def self.countcust
    Customer.where(:created_at => 1.months.ago..Time.now).count
  end

  def self.countreserve
    Reservation.where(:date => 1.months.ago..Time.now).count
  end


  scope :search_query, -> {Reservation.all}
  scope :with_create_at, -> {where(:created_at <= Date.today)}

  # def self.filterrific
  #   # filterrific(
  #   #     default_filter_params: { sorted_by: 'created_at_desc' },
  #   #     available_filters: [
  #   #         :sorted_by,
  #   #         :search_query,
  #   #         :with_created_at_gte
  #   #     ]
  #   # )
  # end

end
