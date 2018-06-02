json.extract! public_place, :id, :name, :public_place_type_id, :postal_code_hint_id, :created_at, :updated_at
json.url public_place_url(public_place, format: :json)
