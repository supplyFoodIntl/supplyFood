class PersonCocoon < ApplicationRecord
    has_many :address_cocoons, inverse_of: :person_cocoon, dependent: :destroy
    belongs_to :ic_type
    accepts_nested_attributes_for :address_cocoons, reject_if: :all_blank, allow_destroy: true
end
