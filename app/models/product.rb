class Product < ApplicationRecord

  belongs_to :material, :class_name => Material, :foreign_key => 'material_id', optional: true
  belongs_to :heel, :class_name => Heel, :foreign_key => 'heel_id', optional: true
  belongs_to :color, :class_name => Color, :foreign_key => 'color_id', optional: true
  belongs_to :product, :class_name => ProductStatus, :foreign_key => 'productstatus_id', optional: true





  has_many :reservations
  def full_product_name
    ' ' + self.Product_Name + ' ' + self.Material.to_s + ' Heel:' + self.Heel.to_s
  end
end
