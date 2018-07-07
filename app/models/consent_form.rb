class ConsentForm < ApplicationRecord
  belongs_to :consent_form_type
  belongs_to :user
    
   def add_donor
     person = Person.new
     person.email =  :email
     person.save
   end    
    
   def add_volunteer
     person = Person.new
     person.email =  :email
     person.save
   end    
    
    
   def add_supplier
     person = Person.new
     person.email =  :email
     person.save
   end    
    
    
   def add_consumer
     person = Person.new
     person.email =  :email
     person.save
   end    
    
end
