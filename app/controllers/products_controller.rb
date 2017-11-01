class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @number = 0;

    if params[:search]
      @number = "set"
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end

    if params[:category_id]
      #is_a? Numeric
      @number = "Category ID Detected"
      @products = Product.search_category_id(params[:category_id]).order("created_at DESC")
    else
      @number = "Category ID not detected"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
