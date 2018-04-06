class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.float :sizename

      t.timestamps
    end
  end
end
