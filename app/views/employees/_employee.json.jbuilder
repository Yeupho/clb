json.extract! employee, :id, :firstname, :lastname, :phone, :EmployeeTypeID, :EmployeeStatusID, :created_at, :updated_at
json.url employee_url(employee, format: :json)
