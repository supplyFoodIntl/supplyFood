class GoodType < ApplicationRecord
  has_ancestry

  #using parent_id, made obsolete with ancestry
  #belongs_to :good_type
  #belongs_to :parent, class_name: "GoodType"
  #has_many :children, class_name: "GoodType", foreign_key: "parent_id"
end
