class V1::ProductController < ApplicationController

    def getAllProduct
        @product = Product.select("products.productName", "products.productSize",
            "products.productPrice", "product_categories.categoryName").joins(:product_category)
        @countProducts = Product.count
        render json: {total: @countProducts, data: @product, count: @countProducts}
    end

    def getSingleProduct
        @product = Product.select("products.productName", "products.productSize",
            "products.productPrice", "product_categories.categoryName").joins(:product_category).find(params[:productCode])
        render json: {data: @product}
    end
end
