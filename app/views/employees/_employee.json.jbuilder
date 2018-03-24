json.extract! employee, :id, :FirstName, :LastName, :Phone, :EmployeeTypeID, :EmployeeStatusID, :created_at, :updated_at
json.url employee_url(employee, format: :json)
