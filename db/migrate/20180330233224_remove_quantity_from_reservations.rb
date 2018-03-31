class RemoveQuantityFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :Quantity, :integer
  end
end
