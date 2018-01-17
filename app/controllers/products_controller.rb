class ProductsController < ApplicationController
  def one_product_method
    products = Product.last
    render json: products.as_json
  end

  def all_products_method
    products = Product.all
    render json: products.as_json
  end
end
