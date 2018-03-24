class CreateCustomerStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_statuses do |t|
      t.string :Description

      t.timestamps
    end
  end
end
