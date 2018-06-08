class Signup < ApplicationRecord
    belongs_to :ic_type
    has_secure_password
end
