json.extract! signup, :id, :username, :password_digest, :ic, :ic_type_id, :address_line1, :address_line2, :zipcode, :state, :country, :phone, :created_at, :updated_at
json.url signup_url(signup, format: :json)
