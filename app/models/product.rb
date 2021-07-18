class Product < ApplicationRecord

    include Filterable

    validates_uniqueness_of :code

    scope :by_keyword, -> (keyword){where("lower(description) Like '#{keyword.downcase}'")}
    
end
