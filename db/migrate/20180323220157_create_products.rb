class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :material_id, default: 1
      t.integer :heel_id, default: 1
      t.integer :productstatus_id, :default => 1
      t.text :serialnumber, :default => 'ADC-ebae-5444'
      t.text :imageurl, :default => ''
      t.integer :color_id, :default => 1

      t.timestamps
    end
  end
end
