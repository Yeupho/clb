json.extract! reservation, :id, :Date, :CustomerID, :ReservStatusID, :ProductID, :ColorID, :HeelID, :Quantity, :EmployeeID, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
