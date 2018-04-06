class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :customerid
      t.integer :reservestatusid
      t.integer :productid
      t.integer :colorid, :default => 1
      t.integer :sizeid, :default => 1
      t.integer :employeeid, :default => 1

      t.timestamps
    end
  end
end
