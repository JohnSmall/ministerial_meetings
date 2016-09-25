json.extract! person, :id, :name, :wikipedia_entry, :created_at, :updated_at
json.url person_url(person, format: :json)