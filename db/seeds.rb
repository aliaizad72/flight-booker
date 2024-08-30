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
    {departure_id: 1, arrival_id: 2, datetime: "2024-03-14T10:30:00Z", duration: 180},
    {departure_id: 3, arrival_id: 4, datetime: "2024-04-22T15:45:00Z", duration: 225},
    {departure_id: 5, arrival_id: 6, datetime: "2024-05-19T08:00:00Z", duration: 150},
    {departure_id: 7, arrival_id: 8, datetime: "2024-06-30T12:15:00Z", duration: 120},
    {departure_id: 9, arrival_id: 10, datetime: "2024-07-10T20:30:00Z", duration: 210},
    {departure_id: 11, arrival_id: 12, datetime: "2024-08-25T16:00:00Z", duration: 160},
    {departure_id: 13, arrival_id: 14, datetime: "2024-09-05T09:45:00Z", duration: 190},
    {departure_id: 15, arrival_id: 16, datetime: "2024-10-12T13:30:00Z", duration: 175},
    {departure_id: 17, arrival_id: 18, datetime: "2024-11-20T18:15:00Z", duration: 200},
    {departure_id: 19, arrival_id: 20, datetime: "2024-12-15T11:00:00Z", duration: 140},
    {departure_id: 2, arrival_id: 3, datetime: "2024-01-10T14:30:00Z", duration: 230},
    {departure_id: 4, arrival_id: 5, datetime: "2024-02-25T17:45:00Z", duration: 155},
    {departure_id: 6, arrival_id: 7, datetime: "2024-03-12T08:30:00Z", duration: 165},
    {departure_id: 8, arrival_id: 9, datetime: "2024-04-18T15:00:00Z", duration: 190},
    {departure_id: 10, arrival_id: 11, datetime: "2024-05-29T12:30:00Z", duration: 220},
    {departure_id: 12, arrival_id: 13, datetime: "2024-06-10T19:00:00Z", duration: 175},
    {departure_id: 14, arrival_id: 15, datetime: "2024-07-15T09:45:00Z", duration: 210},
    {departure_id: 16, arrival_id: 17, datetime: "2024-08-20T14:00:00Z", duration: 160},
    {departure_id: 18, arrival_id: 19, datetime: "2024-09-25T16:30:00Z", duration: 185},
    {departure_id: 20, arrival_id: 1, datetime: "2024-10-30T11:15:00Z", duration: 195}
  ]
)

puts "Created #{Flight.count} flights"
