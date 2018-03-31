class RemoveStockQuantityFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :StockQuantity, :integer
  end
end
