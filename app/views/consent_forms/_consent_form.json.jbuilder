json.extract! consent_form, :id, :consent_form_type, :user_id, :created_at, :updated_at, :is_signed, :signed_at, :valid_until
json.url consent_form_url(consent_form, format: :json)


