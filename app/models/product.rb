class Product < ApplicationRecord

    self.ignored_columns = %w(id)
    self.primary_key = 'productCode'
    belongs_to :product_category, :foreign_key => :categoryCode
end
