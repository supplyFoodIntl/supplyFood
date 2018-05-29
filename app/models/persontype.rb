class Persontype < ApplicationRecord
    has_many :person, foreign_key:"pt_idpersontype"
end
