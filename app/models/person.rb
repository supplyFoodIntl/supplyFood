class Person < ApplicationRecord
  belongs_to :PersonType,  foreign_key: 'idpersontype'
  belongs_to :Ictype, foreign_key: "idictype"
end
