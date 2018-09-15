class ProductCategory < ApplicationRecord
    has_many :product
    self.primary_key = 'categoryCode'
end
