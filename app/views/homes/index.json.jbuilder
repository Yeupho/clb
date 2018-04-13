json.array!(@calendar) do |event|
  json.id event.id
  json.title event.name
  json.start event.date
  json.color '#000000'
  json.textColor '#2b2b2b'
  json.url event_url(event, format: :html)
end