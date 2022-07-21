class CreateOrderInteractor
  include Interactor

  attr_reader :order, :products, :customer, :order_instance

  def call
    @order = context.params.dig :order
    @products = context.params.dig :products
    @customer = context.customer
    create_order
    link_products
    update_amount
  end

  def create_order
    @order_instance = Order.create(
      customer_id: customer.id,
      payment_type: order.dig(:payment_type),
      customer_addresses_id:  order.dig(:address_id)
    )
  end

  def link_products
    data = []
    products.each { |prd| data << { order_id: order_instance.id, product_id: prd } }
    OrderProduct.create(data)
  end

  def calc_amount
    amount = 0
    order_instance.products.each { |prd| amount += prd.price }
    amount
  end

  def update_amount
    order_instance.update(total_order_value: calc_amount)
  end
end
