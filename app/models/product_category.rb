class ProductCategory < ApplicationRecord
    has_many :product
    self.primary_key = 'categoryCode'
    self.ignored_columns = [:id, :created_at, :updated_at]
end