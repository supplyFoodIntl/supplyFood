class PostalCodeHint < ApplicationRecord
  has_many :public_place
    
  #control the seach on postal_codes_hint
  def self.list_by_code(parm)
    #define a set of postal code hints basead on seach parameter
    self.where("lower(code) LIKE ?", "#{sanitize_sql_like(parm)}%")
  end
  def self.list_by_hint(parm)
    #define a set of postal code hints basead on seach parameter
    #self.find_by hint: parm
    self.where("lower(hint) LIKE ?", "%#{sanitize_sql_like(parm.downcase)}%")
  end
    
  def self.list_by_public_place_name(parm)
    #define a set of postal code hints basead on seach parameter
    #self.find_by hint: parm
    self.where("lower(public_place_name) LIKE ?", "%#{sanitize_sql_like(parm.downcase)}%")
  end
end
