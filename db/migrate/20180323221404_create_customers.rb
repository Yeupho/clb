class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Email
      t.string :Phone
      t.integer :Country
      t.integer :State
      t.string :City
      t.string :Zipcode
      t.string :Address
      t.integer :CustomerStatusID

      t.timestamps
    end
  end
end
