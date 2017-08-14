class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    Product.create(
      name: params[:name],
      image: params[:image]
    )
    redirect_to "/products"
  end
end
