require 'csv'

class OrderDownload
  attr_reader :orders
  def initialize(orders)
    @orders = orders
  end

  def to_csv
    headers = %w(girl_name) + Order::COOKIE_TYPES + Order::COOKIE_TYPES.map { |t| "#{t}_online" }
    CSV.generate(headers: headers, write_headers: true) do |csv|
      orders.each do |order|
        row = [order.girl_name]
        row.concat Order::COOKIE_TYPES.map { |t| order.public_send(t) }
        row.concat Order::COOKIE_TYPES.map { |t| order.public_send("#{t}_online") }
        csv << row
      end
    end
  end
end
