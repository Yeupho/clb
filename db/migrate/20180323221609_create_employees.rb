class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Phone
      t.integer :EmployeeTypeID
      t.integer :EmployeeStatusID

      t.timestamps
    end
  end
end
