class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.integer :EmployeeTypeID
      t.integer :EmployeeStatusID

      t.timestamps
    end
  end
end
