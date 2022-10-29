# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cities = ["Delhi Del", "Hyderabad HYD", "Pune PNQ", "Goa GOI", "Chennai MAA", "Bombay BOM", "Ahmedabad AMD", "Kolkata CCU", "Coimbatore CCU", "Bengaluru BLR"].sort

cities.each do |city|
	Airport.create(airport_code: city)
end




all_airports = Airport.all

            


1000.times do
  departure_airport = all_airports[rand(0..9)].id
  destination_airport = all_airports[rand(0..9)].id
  Flight.create(departure_airport_id: departure_airport,
                arrival_airport_id: destination_airport,
                takeoff_date: rand(30.days).seconds.from_now,
                takeoff_time: "09:00",
                arrival_time: "11:00",
                duration: "2",
                price: rand(3000..5000)) if departure_airport != destination_airport
end