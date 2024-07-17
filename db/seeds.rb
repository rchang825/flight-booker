# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

sfo = Airport.find_or_create_by!(code: "SFO")
nyc = Airport.find_or_create_by!(code: "NYC")
clt = Airport.find_or_create_by!(code: "CLT")
sea = Airport.find_or_create_by!(code: "SEA")
atl = Airport.find_or_create_by!(code: "ATL")
pit = Airport.find_or_create_by!(code: "PIT")

puts "airports created!"

Flight.find_or_create_by!(departure_airport:sfo, arrival_airport:nyc, date:"10/04/2023", duration:"5 hours")
Flight.find_or_create_by!(departure_airport:clt, arrival_airport:nyc, date:"02/12/2023", duration:"2 hours 15 min")
Flight.find_or_create_by!(departure_airport:pit, arrival_airport:sea, date:"11/06/2023", duration:"5 hours 45 min")
Flight.find_or_create_by!(departure_airport:atl, arrival_airport:sfo, date:"07/04/2023", duration:"6 hours")
Flight.find_or_create_by!(departure_airport:sfo, arrival_airport:sea, date:"04/04/2023", duration:"1 hour 30 min")
Flight.find_or_create_by!(departure_airport:pit, arrival_airport:sfo, date:"16/08/2023", duration:"5 hour 30 min")
Flight.find_or_create_by!(departure_airport:pit, arrival_airport:sfo, date:"17/08/2023", duration:"5 hour 45 min")
Flight.find_or_create_by!(departure_airport:clt, arrival_airport:nyc, date:"16/11/2023", duration:"2 hour 30 min")
Flight.find_or_create_by!(departure_airport:pit, arrival_airport:sea, date:"16/08/2023", duration:"8 hours")
Flight.find_or_create_by!(departure_airport:pit, arrival_airport:sea, date:"16/08/2023", duration:"6 hour 30 min")



puts "flights created!"
