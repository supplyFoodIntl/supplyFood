module GoodTypesHelper
    
    def nested_good_types(good_types)
      good_types.map do |good_type, sub_good_types|
        content_tag(:ul,content_tag(:div,good_type)+  content_tag(:li, nested_good_types(sub_good_types), :class => "nested_good_types"))
      end.join.html_sa
    end
    
end
