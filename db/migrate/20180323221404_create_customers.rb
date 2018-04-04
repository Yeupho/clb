class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :country
      t.integer :state
      t.string :city
      t.string :zipcode
      t.string :address
      t.integer :customerstatusid

      t.timestamps
    end
  end
end
