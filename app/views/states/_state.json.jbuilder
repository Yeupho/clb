json.extract! state, :id, :StateName, :StateAbbrev, :created_at, :updated_at
json.url state_url(state, format: :json)
