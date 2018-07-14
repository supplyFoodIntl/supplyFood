class User < ApplicationRecord
  has_one :person
  belongs_to :volunteer ,  optional: true
  belongs_to :donor, optional: true
  has_one :supplier
  has_one :consumer
  has_many :consent_form


  after_create :add_person, :add_unsigned_consent_forms
    
  def donor_find_or_create
        #check if the is a donorId to the current user
        if self.donor.nil?
              #if not, create a new donor, set disabled
              current_donor = Donor.new
              current_donor.level=@@donor_start_level
              current_donor.save
              #associate the new donor to the current user
              self.donor =current_donor
              self.save
        end
        #set the user donor to the donation
        puts "!!!donor associated"
        self.donor
    end 
    
   def add_person
     person = Person.new
     person.email =  :email
     person.save
   end    
    
   def add_unsigned_consent_forms
       #add donor consent form
       add_unsigned_donor_consent_forms

       #add supplier consent form
       add_unsigned_supplier_consent_forms
       
       #add volunteer consent form
       add_unsigned_volunteer_consent_forms
     
       #add consumer consent form
       add_unsigned_consumer_consent_forms

   end  
    
    def add_unsigned_donor_consent_forms
       donor_consent = ConsentForm.new
       donor_consent.consent_form_type = ConsentFormType.find_by description: "Donor"
       donor_consent.user = self
       donor_consent.save
    end
    
    def add_unsigned_supplier_consent_forms
       supplier_consent = ConsentForm.new
       supplier_consent.consent_form_type = ConsentFormType.find_by description: "Supplier"
       supplier_consent.user = self
       supplier_consent.save
    end
    
    def add_unsigned_volunteer_consent_forms
       volunteer_consent = ConsentForm.new
       volunteer_consent.consent_form_type = ConsentFormType.find_by description: "Volunteer"
       volunteer_consent.user = self  
       volunteer_consent.save
    end
    
    def add_unsigned_consumer_consent_forms
       consumer_consent = ConsentForm.new
       consumer_consent.consent_form_type = ConsentFormType.find_by description: "Donee"
       consumer_consent.user = self  
       consumer_consent.save
    end
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
