class Product < ApplicationRecord

    include Filterable

    validates_uniqueness_of :code

    scope :by_keyword, -> (keyword){where("lower(description) Like '#{keyword.downcase}'")}

    def product_types
        type_names = self.description.split(' ')
        types = []
        type_names.each { |name|
            type = ProductType.find_by(name: name)
            if type.present?
                types << name
            end
        }
        types
    end
    
end
