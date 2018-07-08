json.extract! donation, :id, :available_start, :available_end, :address, :confirmation_phone, :donor,  :created_at, :updated_at
json.url donation_url(donation, format: :json)
