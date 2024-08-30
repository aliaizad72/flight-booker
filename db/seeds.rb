# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.create!(
  [
    { code: "AMS" },
    { code: "ARN" },
    { code: "ATL" },
    { code: "BCN" },
    { code: "BKK" },
    { code: "BNE" },
    { code: "BOM" },
    { code: "BOS" },
    { code: "CAN" },
    { code: "CDG" },
    { code: "CLT" },
    { code: "DME" },
    { code: "DEN" },
    { code: "DFW" },
    { code: "DUB" },
    { code: "DUS" },
    { code: "DXB" },
    { code: "EWR" },
    { code: "FCO" },
    { code: "FLL" }
  ]
)

puts "Created #{Airport.count} airports"

Flight.create!(
  [
    { departure_id: 1, arrival_id: 2 },
    { departure_id: 3, arrival_id: 4 },
    { departure_id: 5, arrival_id: 6 },
    { departure_id: 7, arrival_id: 8 },
    { departure_id: 9, arrival_id: 10 },
    { departure_id: 11, arrival_id: 12 },
    { departure_id: 13, arrival_id: 14 },
    { departure_id: 15, arrival_id: 16 },
    { departure_id: 17, arrival_id: 18 },
    { departure_id: 19, arrival_id: 20 },
    { departure_id: 2, arrival_id: 3 },
    { departure_id: 4, arrival_id: 5 },
    { departure_id: 6, arrival_id: 7 },
    { departure_id: 8, arrival_id: 9 },
    { departure_id: 10, arrival_id: 11 },
    { departure_id: 12, arrival_id: 13 },
    { departure_id: 14, arrival_id: 15 },
    { departure_id: 16, arrival_id: 17 },
    { departure_id: 18, arrival_id: 19 },
    { departure_id: 20, arrival_id: 1 }
  ]
)

puts "Created #{Flight.count} flights"
