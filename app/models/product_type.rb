class ProductType < ApplicationRecord

  validates_uniqueness_of :code, :scope => :name

end