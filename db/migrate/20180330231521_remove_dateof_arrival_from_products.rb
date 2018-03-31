class RemoveDateofArrivalFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :DateofArrival, :date
  end
end
