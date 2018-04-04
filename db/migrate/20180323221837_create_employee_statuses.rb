class CreateEmployeeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_statuses do |t|
      t.string :statusname

      t.timestamps
    end
  end
end
