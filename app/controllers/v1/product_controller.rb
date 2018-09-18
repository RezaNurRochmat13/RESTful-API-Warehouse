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

    def createPorduct
        @product = Product.new(productCode: params[:productCode], productName: params[:productName],
            productSize: params[:productSize], productPrice: params[:productPrice], categoryCode: params[:categoryCode]) 

        if @product.save
            render json: {message: 'Inserted successfully'}
        else
            render json: {error: 'BAD REQUEST'}
        end
    end

    def updateProduct
        @product = Product.find(params[:productCode])
        if @product.update(productName: params[:productName],productSize: params[:productSize],
            productPrice: params[:productPrice], categoryCode: params[:categoryCode])

            render json: {message: 'Updated successfully'}
        else
            render json: {error: 'BAD REQUEST'} 
        end
    end 

    def deleteProduct
        @product = Product.find(params[:productCode])

        if @product.destroy
            render json: {message: 'Deleted successfully'}
        else
            render json: {error: 'BAD REQUEST', status: 400}
        end
    end
end
