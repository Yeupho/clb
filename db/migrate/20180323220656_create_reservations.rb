class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :Date
      t.integer :CustomerID
      t.integer :ReservStatusID
      t.integer :ProductID
      t.integer :ColorID
      t.integer :HeelID
      t.integer :Quantity
      t.integer :EmployeeID

      t.timestamps
    end
  end
end
