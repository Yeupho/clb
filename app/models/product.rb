class Product < ApplicationRecord

  belongs_to :material, :class_name => Material, :foreign_key => 'material_id', optional: true
  belongs_to :heel, :class_name => Heel, :foreign_key => 'heel_id', optional: true
  belongs_to :color, :class_name => Color, :foreign_key => 'color_id', optional: true
  belongs_to :productstatus, :class_name => ProductStatus, :foreign_key => 'productstatus_id', optional: true



  def self.procductname
    # CustomerEvent.select("customer_events.id, event_id, customers.first_name,
    #   customers.last_name, kids_painting, adults_painting, number_in_party")
    #   .joins(:customer)
    #   .order("customers.first_name ASC")
    #
    Reservation.select('products.product_name AS producta,materials.description AS matdisc,color.colorname AS colorn ')
        .joins('INNER JOIN products ON products.id = reservations.customerid')
        .joins('INNER JOIN materials ON materials.id = products.material_id')
         .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
        .joins('INNER JOIN color ON color.id = products.color_id')
        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
        .where('reservestatusid = ?', params[:reservestatusid]).limit(100)



  end

  def self.mostpopprod
    Reservation.where(:date => 1.months.ago .. Time.now)
        .joins(:product).group(:product_name).order('products.product_name').count(:product_name)
    # Reservation.where(:date => 1.months.ago .. Time.now).joins(:products).count(:product_name)
  end


  has_many :reservations

end
