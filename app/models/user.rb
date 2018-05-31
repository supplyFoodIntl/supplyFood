class User < ApplicationRecord
  belongs_to :person
  belongs_to :user_type
  has_secure_password
end
