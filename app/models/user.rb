class User < ApplicationRecord
#  attributes_accessible :id, :username, :email, :password_digest, :person_id, :persons_attributes, :user_types_attributes
  #belongs_to :person
  #belongs_to :user_type
    
  #accepts_nested_attributes_for :person
  #accepts_nested_attributes_for :user_type
  after_create :add_person, :add_profile


   def add_person
     person = Person.new
     person.email =  email
     person.save
   end    
    
    def add_profile
     profile = Profile.new
     profile.user =  :id
     profile.save
   end    
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #extend Devise::Models
end
