class PublicPlace < ApplicationRecord
  belongs_to :public_place_type
  belongs_to :postal_code_hint
  

accepts_nested_attributes_for :postal_code_hint, reject_if: :all_blank, allow_destroy: false
end
