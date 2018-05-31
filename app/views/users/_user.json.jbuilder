json.extract! user, :id, :username, :email, :password_digest, :person_id, :user_type_id, :created_at, :updated_at
json.url user_url(user, format: :json)
