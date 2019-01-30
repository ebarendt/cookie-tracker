ActionController::Renderers.add :csv do |object, options|
  filename = options[:filename] || 'data'
  str = object.respond_to?(:to_csv) ? object.to_csv : object.to_s
  send_data str, type: Mime[:csv], disposition: "attachment; filename=#{filename}.csv"
end
