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

  def createNewCategoryProduct
    @product_category = ProductCategory.new(categoryCode: params[:categoryCode], categoryName: params[:categoryName])

    if @product_category.save
      render json: {message: 'Created successfully'}
    else
      render json: {error: 'BAD REQUEST'}
    end
  end

  def updateCategoryProduct
    @product_category = ProductCategory.find(params[:categoryCode])
    
    if @product_category.update(categoryName: params[:categoryName])
      render json: {message: 'Updated succesffully'}
    else
      render json: {error: 'BAD REQUEST'}
    end
  end

  def deleteCategoryProduct
    @product_category = ProductCategory.find(params[:categoryCode])

    if @product_category.destroy
      render json: {message: 'Deleted successfully'}
    else
      render json: {error: 'BAD REQUEST'} 
    end
  end
end
