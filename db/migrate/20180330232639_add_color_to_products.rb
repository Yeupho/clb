class AddColorToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ColorID, :integer
  end
end
