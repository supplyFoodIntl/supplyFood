json.extract! person, :id, :name, :ic, :person_type_id, :ic_type_id, :created_at, :updated_at
json.url person_url(person, format: :json)
