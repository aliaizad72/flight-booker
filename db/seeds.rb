# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.destroy_all

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

p "Created #{Airport.count} airports"
