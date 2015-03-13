class IndexController < ApplicationController
  def index
    @num_users = User.count
    @num_orders = Order.count
    @num_products = Product.count
    @num_products_ordered = ProductOrder.count
    @answers = Answer.all
    order_totals = Order.all.map { |o| o.products.map(&:price).sum }
    @avg_order = (order_totals.sum.to_f / order_totals.size).round(2)
  end
end
