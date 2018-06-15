json.extract! donation, :id, :available_start, :available_end, :donor_id, :volunteer_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
