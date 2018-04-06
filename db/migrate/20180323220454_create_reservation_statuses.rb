class CreateReservationStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :reservation_statuses do |t|
      t.string :statusname

      t.timestamps
    end
  end
end
