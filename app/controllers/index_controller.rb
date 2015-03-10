class IndexController < ApplicationController
  def index
    @num_users = User.count
    @num_orders = Order.count
    @num_products = Product.count
    @num_products_ordered = ProductOrder.count
    @answers = Answer.all
  end
end
