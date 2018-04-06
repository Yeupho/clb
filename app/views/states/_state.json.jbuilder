json.extract! state, :id, :statename, :stateabbrev, :created_at, :updated_at
json.url state_url(state, format: :json)
