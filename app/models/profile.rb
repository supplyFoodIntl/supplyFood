class Profile < ApplicationRecord
  belongs_to :person
  belongs_to :consumer
  belongs_to :supplier
  belongs_to :volunteer
  belongs_to :user
end
