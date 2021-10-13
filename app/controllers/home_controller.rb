class HomeController < ApplicationController
  def main
    @users = TestLogin.all
    @products = Product.all
  end

  def add_product
    @products = Product.new
  end

  def test
  end

  def create
  end

  def new
    if params != nil
      (@products1 = Product.new(name:params[:name],product_link:params[:product_link],previous_price:params[:previous_price],current_price:params[:current_price],image_url:params[:image_url])) if (params[:product_link]!=nil)
    end
    if @products1.save
      @products = Product.all
      render :main
      #here we calling main.html.erb from new(i.e after storing data)
      #so initialised new @products object and called to pass instance
    else
    end
  end




  def fetchusers
    #@users = TestLogin.all
  end
#
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end
end
