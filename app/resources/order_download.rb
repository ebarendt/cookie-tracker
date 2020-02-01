require 'csv'

class OrderDownload
  attr_reader :orders
  def initialize(orders)
    @orders = orders
  end

  def to_csv
    headers = %w(girl_name) + Order::COOKIE_TYPES
    CSV.generate(headers: headers, write_headers: true) do |csv|
      orders.each do |order|
        row = [order.girl_name]
        row.concat Order::COOKIE_TYPES.map { |t| order.public_send(t) }
        csv << row
      end
    end
  end
end
