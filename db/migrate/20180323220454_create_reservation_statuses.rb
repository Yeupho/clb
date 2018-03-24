class CreateReservationStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :reservation_statuses do |t|
      t.string :StatusName

      t.timestamps
    end
  end
end
