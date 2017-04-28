json.array!(@cars) do |car|
  json.extract! car, :id, :firstname, :lastname, :manufacturer, :cost, :description, :color
  json.url car_url(car, format: :json)
end
