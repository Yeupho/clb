class RemoveHeelFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :HeelID, :integer
  end
end
