json.extract! reservation_status, :id, :statusname, :created_at, :updated_at
json.url reservation_status_url(reservation_status, format: :json)
