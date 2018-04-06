class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :country_id, :default => 1
      t.integer :state_id, :default => 43
      t.string :city, :default => 'Houston'
      t.string :zipcode, :default => 77000
      t.string :address, 'Westheimer'
      t.integer :customerstatusid, :default => 1

      t.timestamps
    end
  end
end
