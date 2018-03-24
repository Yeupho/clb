json.extract! employee_status, :id, :StatusName, :created_at, :updated_at
json.url employee_status_url(employee_status, format: :json)
