class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    product = Product.new(product_params)
    category = Category.find(params[:product][:category])
    product.category = category
    product.save
    # Product.create(product_params)
    flash[:notice] = "New product created!"
    redirect_to '/products/'
  end

  def update
    category = Category.find(params[:product][:category])
    product = Product.find(params[:id])
    product.name = params[:product][:name]
    product.description = params[:product][:description]
    product.pricing = params[:product][:pricing]
    product.category = category
    product.save
    #Product.find(params[:id]).update(product_params)
    flash[:notice] = "Product updated!"
    redirect_to '/products/'
  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:notice] = "Product destroyed!"
    redirect_to '/products/'
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :pricing)
  end
end
