class Person < ActiveRecord::Base

    self.primary_key = :idperson

    belongs_to :, :class_name => '', :foreign_key => :pt_idpersontype
    belongs_to :, :class_name => '', :foreign_key => :ict_idictype
end
