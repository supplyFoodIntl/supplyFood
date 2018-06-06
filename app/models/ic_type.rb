class IcType < ApplicationRecord
    validates :name, presence:true,  length: {minimum:3, maximum:50}
    validates_uniqueness_of :name
    has_many :person
end
