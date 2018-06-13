json.extract! profile, :id, :full_name, :person_id, :consumer_id, :supplier_id, :volunteer_id, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
