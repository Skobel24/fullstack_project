class HomeController < ApplicationController
  def index
    @page_info = PageInfo.first
  end
end
