class ProductsController < ApplicationController
 
  def index
    products = Product.all
    render json: products.as_json
  end

  def create
    products = Product.new(
                            name: params[:name],
                            price: params[:price],
                            ingredients: params[:ingredients],
                            heat_level: params[:heat_level],
                            description: params[:description],
                            image_url: params[:image_url]
                          )
    products.save
    render json: products.as_json
  end

  def show
    products = Product.find(params[:id])
    render json: products.as_json
  end
  
  def update
    products = Product.find(params[:id])
    products.name = params[:name] || products.name
    products.price = params[:price] || products.price
    products.ingredients = params[:ingredients] || products.ingredients
    products.heat_level = params[:heat_level] || products.heat_level
    products.description = params[:description] || products.description
    products.image_url = params[:image_url] || products.image_url

    products.save
    render json: product.as_json
    
  end

  def destroy
    products = Product.find(params[:id])
    products.destroy
    render json: {message: "You successfully deleted Products Number #{products.id}."}
  end

end
