class Material < ApplicationRecord

  has_many :products


  def self.countmats
    Reservation.select('material.description AS matdesc').joins('JOIN products ON products.id = reservations.productid').joins('JOIN materials ON materials.id = products.material_id')
  end
end
