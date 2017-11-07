class ProductsController < ApplicationController
  def index
    #@products = Product.all
    @categories = Category.all
    #boolean is_loaded just checks to see if the end of the index has occured.
    #if so, it toggles to true, and allows that category_id param to be detected.
    #it's an ugly fix.
    is_loaded = false;

    if (params[:search] and params[:product][:category_id] != "")
      @products = Product.search_category_name_id(params[:search],
                          params[:product][:category_id])
                          .order("created_at DESC")
    elsif (is_loaded == true and params[:product][:category_id])
        @products = Product.search_category_id(params[:product][:category_id])
                           .order("created_at DESC")
    elsif params[:search]
      @products = Product.search_category_name(params[:search])
                         .order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end

    #Sets the boolean to true so the search can be done.
    is_loaded = true
  end



  def show
    @product = Product.find(params[:id])
  end

  def sale_products
    @categories = Category.all
    @products = Product.search_sale_items.order("created_at DESC")
  end

  def new_products
    @categories = Category.all
    @products = Product.search_new_items.order("created_at DESC")
  end

end
