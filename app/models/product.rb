class Product < ApplicationRecord

  has_many :reservations
  def full_product_name
    ' ' + self.Product_Name + ' ' + self.Material.to_s + ' Heel:' + self.Heel.to_s
  end
end
