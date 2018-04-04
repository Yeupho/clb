class CreateCustomerStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
