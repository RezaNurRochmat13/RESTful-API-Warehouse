Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do 
    get '/products', to: 'product#getAllProduct'
    get '/products/:productCode', to: 'product#getSingleProduct'
    post '/products/', to: 'product#createPorduct'
    put '/products/:productCode', to: 'product#updateProduct'
    delete '/products/:productCode', to: 'product#deleteProduct'
  end
end
