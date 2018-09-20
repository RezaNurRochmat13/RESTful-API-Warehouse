class V1::ProductCategoryController < ApplicationController
  def getAllCategoryProduct
    @product_category = ProductCategory.all
    @countProductCategory = ProductCategory.count
    render json: {total: @countProductCategory, data: @product_category, count: @countProductCategory}
  end

  def getSingleCategoryProduct
    @product_category = ProductCategory.find(params[:categoryCode])
    render json: {data: @product_category} 
  end
end
