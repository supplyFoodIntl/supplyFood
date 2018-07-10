json.extract! volunteer, :id,  :created_at, :updated_at,:operating_area, :availability,:skills,:health_concerns
json.url volunteer_url(volunteer, format: :json)
