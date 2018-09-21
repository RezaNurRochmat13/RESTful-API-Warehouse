Rails.application.routes.draw do
  get 'product_category//controllers/v1'
  get 'product_category//v1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do 
    # PRODUCT ENDPOINT ROUTES
    get '/products', to: 'product#getAllProduct' 
    get '/products/:productCode', to: 'product#getSingleProduct'
    post '/products/', to: 'product#createPorduct'
    put '/products/:productCode', to: 'product#updateProduct'
    delete '/products/:productCode', to: 'product#deleteProduct'

    # PRODUCT CATEGORY ROUTES
    get '/product_categories', to: 'product_category#getAllCategoryProduct'
    get '/product_categories/:categoryCode', to: 'product_category#getSingleCategoryProduct'
    post '/product_categories', to: 'product_category#createNewCategoryProduct'
    put '/product_categories/:categoryCode', to: 'product_category#updateCategoryProduct'
  end
end
