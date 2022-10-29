json.extract! booking, :id, :created_at, :updated_at, :flight_id, :number_of_passengers
json.url booking_url(booking, format: :json)
