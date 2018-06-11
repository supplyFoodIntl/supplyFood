class User < ApplicationRecord
#  attributes_accessible :id, :username, :email, :password_digest, :person_id, :persons_attributes, :user_types_attributes
  belongs_to :person
  belongs_to :user_type
    
  accepts_nested_attributes_for :person
  accepts_nested_attributes_for :user_type
  has_secure_password
  #extend Devise::Models
end
