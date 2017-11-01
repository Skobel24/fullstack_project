class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    #@debug = "initial view";

    # if params[:search] and params[:product][:category_id]
    #
    # elsif params[:search]
    #
    # elsif params[:product][:category_id]
    #
    # end

    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end

    if params[:product]
      if params[:product][:category_id]
        #is_a? Numeric
        #@debug = "Category ID Detected"
        @products = Product.search_category_id(params[:product][:category_id]).order("created_at DESC")
      else
        #@debug = "Entered product param, but no category found"
      end
    else
      #@debug = "Did not enter product param"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
