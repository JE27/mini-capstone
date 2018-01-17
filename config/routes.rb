Rails.application.routes.draw do
  get "/one_product_url" => 'prodcuts#one_product_method'
  get "/all_products_url" => 'products#all_products_method'
end
