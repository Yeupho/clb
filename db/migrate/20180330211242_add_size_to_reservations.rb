class AddSizeToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :SizeID, :integer
  end
end
