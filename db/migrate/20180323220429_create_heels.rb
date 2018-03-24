class CreateHeels < ActiveRecord::Migration[5.1]
  def change
    create_table :heels do |t|
      t.float :Height

      t.timestamps
    end
  end
end
