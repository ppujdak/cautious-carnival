class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart  
  
  def index
    @product = Product.order(:title)
  end
end
