class User < ApplicationRecord
  #attr_accessor :id, :email , :username, :person_id, :people_attributes, :user_types_attributes #:password_digest
  #has_one :profile 
  has_one :person
  has_one :volunteer
  has_one :donor
  has_one :supplier
  has_one :consumer
  has_many :consent_form
    
  accepts_nested_attributes_for :person

  after_create :add_person, :add_unsigned_consent_forms

    
   def add_person
     person = Person.new
     person.email =  :email
     person.save
   end    
    
   def add_unsigned_consent_forms
       #add donor consent form
       donor_consent = ConsentForm.new
       donor_consent.consent_form_type = ConsentFormType.find_by description: "Donor"
       donor_consent.user = self
       
       #add supplier consent form
       supplier_consent = ConsentForm.new
       supplier_consent.consent_form_type = ConsentFormType.find_by description: "Supplier"
       supplier_consent.user = self
       
       #add volunteer consent form
       volunteer_consent = ConsentForm.new
       volunteer_consent.consent_form_type = ConsentFormType.find_by description: "Volunteer"
       volunteer_consent.user = self       

       #add consumer consent form
       consumer_consent = ConsentForm.new
       consumer_consent.consent_form_type = ConsentFormType.find_by description: "Donee"
       consumer_consent.user = self    
       
       donor_consent.save
       supplier_consent.save
       volunteer_consent.save
       consumer_consent.save
       
   end  
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #extend Devise::Models
end
