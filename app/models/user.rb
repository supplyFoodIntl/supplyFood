class User < ApplicationRecord
  #attr_accessor :id, :email , :username, :person_id, :people_attributes, :user_types_attributes #:password_digest
  has_one :profile
  has_one :person
#  has_one :volunteer
#  has_one :donor
#  has_one :supplier
#  has_one :consumer
    
  accepts_nested_attributes_for :person

  after_create :add_person, :add_profile

    
   def add_person
     person = Person.new
     person.email =  :email
     person.save
   end    
    
    def add_profile
     profile = Profile.new
     profile.user =  self
     profile.save
   end    
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #extend Devise::Models
end
