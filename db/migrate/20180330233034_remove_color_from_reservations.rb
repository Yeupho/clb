class RemoveColorFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :ColorID, :integer
  end
end
