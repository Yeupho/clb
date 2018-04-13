class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :colorname, :default => 'Black'
      t.string :hexidecimal, :default => '#000000'

      t.timestamps
    end
  end
end
