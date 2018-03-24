class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :Product_Name
      t.integer :Material
      t.integer :Heel
      t.integer :ProductStatus
      t.date :DateofArrival
      t.text :SerialNumber
      t.integer :StockQuantity
      t.text :ImageURL

      t.timestamps
    end
  end
end
