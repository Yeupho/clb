class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :material
      t.integer :heel, default: 1
      t.integer :productstatus, :default => 1
      t.text :serialnumber
      t.text :imageurl
      t.integer :colorid

      t.timestamps
    end
  end
end
