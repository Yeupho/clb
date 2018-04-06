class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :customerid
      t.integer :reservestatusid
      t.integer :productid
      t.integer :colorid
      t.integer :sizeid
      t.integer :employeeid

      t.timestamps
    end
  end
end
