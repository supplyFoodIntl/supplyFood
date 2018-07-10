class ConsentForm < ApplicationRecord
  belongs_to :consent_form_type
  belongs_to :user
    
end
