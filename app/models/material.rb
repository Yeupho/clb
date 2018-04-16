class Material < ApplicationRecord

  has_many :products

  def self.showmaterialcount
    Product.where().count('material')
  end


  def self.countmats
    Reservation.select('material.description AS matdesc').joins('JOIN products ON products.id = reservations.productid').joins('JOIN materials ON materials.id = products.material_id')
  end

  def self.countmat
    Reservation.where(:date => 1.months.ago .. Time.now).joins(:product).group(:product_name).count(:product_name).first(5)
  end
end
