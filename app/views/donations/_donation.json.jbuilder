json.extract! donation, :id,:full_name, :available_start, :available_end, :retrieve_address, :confirmation_phone, :donor,  :created_at, :updated_at
json.url donation_url(donation, format: :json)
