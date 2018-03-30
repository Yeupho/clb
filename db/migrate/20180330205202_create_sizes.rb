class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.float :SizeName

      t.timestamps
    end
  end
end
