class GoodType < ApplicationRecord
  #belongs_to :good_type
  has_ancestry
  #belongs_to :parent, class_name: "GoodType"
  #has_many :children, class_name: "GoodType", foreign_key: "parent_id"
end
