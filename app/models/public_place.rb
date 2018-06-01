class PublicPlace < ApplicationRecord
  belongs_to :public_place_type
  belongs_to :postal_code_hint
end
