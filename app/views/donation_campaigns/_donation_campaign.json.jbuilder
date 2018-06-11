json.extract! donation_campaign, :id, :address_id, :date_start, :date_end, :created_at, :updated_at
json.url donation_campaign_url(donation_campaign, format: :json)
