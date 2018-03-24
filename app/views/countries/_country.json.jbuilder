json.extract! country, :id, :CountryName, :CountryAbbrev, :created_at, :updated_at
json.url country_url(country, format: :json)
