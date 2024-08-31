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
    { code: "ATL", city: "Atlanta" },
    { code: "PEK", city: "Beijing" },
    { code: "LAX", city: "Los Angeles" },
    { code: "DXB", city: "Dubai" },
    { code: "HND", city: "Tokyo" },
  ]
)

puts "Created #{Airport.count} airports"

Flight.create!(
  [
    { departure_id: 1, arrival_id: 2, datetime: "2024-12-19T12:10:30.122335Z", duration: 271 },
    { departure_id: 1, arrival_id: 3, datetime: "2024-11-22T05:45:00.000000Z", duration: 380 },
    { departure_id: 1, arrival_id: 4, datetime: "2024-10-10T18:30:45.789012Z", duration: 510 },
    { departure_id: 1, arrival_id: 5, datetime: "2024-09-03T09:20:15.654321Z", duration: 645 },

    { departure_id: 2, arrival_id: 1, datetime: "2024-07-21T14:55:30.123456Z", duration: 500 },
    { departure_id: 2, arrival_id: 3, datetime: "2024-06-15T11:00:00.000000Z", duration: 625 },
    { departure_id: 2, arrival_id: 4, datetime: "2024-05-27T13:30:45.789012Z", duration: 750 },
    { departure_id: 2, arrival_id: 5, datetime: "2024-04-12T16:15:30.123456Z", duration: 450 },

    { departure_id: 3, arrival_id: 1, datetime: "2024-03-01T08:20:15.654321Z", duration: 370 },
    { departure_id: 3, arrival_id: 2, datetime: "2024-02-11T10:40:30.122335Z", duration: 480 },
    { departure_id: 3, arrival_id: 4, datetime: "2024-01-25T06:10:30.122335Z", duration: 590 },
    { departure_id: 3, arrival_id: 5, datetime: "2024-12-15T02:55:00.000000Z", duration: 720 },

    { departure_id: 4, arrival_id: 1, datetime: "2024-11-10T05:45:00.000000Z", duration: 280 },
    { departure_id: 4, arrival_id: 2, datetime: "2024-10-03T07:20:15.654321Z", duration: 390 },
    { departure_id: 4, arrival_id: 3, datetime: "2024-09-21T09:00:00.000000Z", duration: 510 },
    { departure_id: 4, arrival_id: 5, datetime: "2024-08-12T12:30:45.789012Z", duration: 625 },

    { departure_id: 5, arrival_id: 1, datetime: "2024-07-01T03:55:30.123456Z", duration: 500 },
    { departure_id: 5, arrival_id: 2, datetime: "2024-06-18T04:10:30.122335Z", duration: 620 },
    { departure_id: 5, arrival_id: 3, datetime: "2024-05-30T08:45:00.000000Z", duration: 740 },
    { departure_id: 5, arrival_id: 4, datetime: "2024-04-22T09:20:15.654321Z", duration: 450 },
    { departure_id: 1, arrival_id: 2, datetime: "2024-12-19T14:30:00.000000Z", duration: 285 },
    { departure_id: 1, arrival_id: 2, datetime: "2024-12-19T16:45:15.123456Z", duration: 300 },

    { departure_id: 1, arrival_id: 3, datetime: "2024-11-22T07:00:00.000000Z", duration: 395 },
    { departure_id: 1, arrival_id: 3, datetime: "2024-11-22T10:15:25.234567Z", duration: 415 },

    { departure_id: 1, arrival_id: 4, datetime: "2024-10-10T19:00:00.000000Z", duration: 525 },
    { departure_id: 1, arrival_id: 4, datetime: "2024-10-10T21:45:40.987654Z", duration: 545 },

    { departure_id: 1, arrival_id: 5, datetime: "2024-09-03T10:30:00.000000Z", duration: 655 },
    { departure_id: 1, arrival_id: 5, datetime: "2024-09-03T12:50:55.876543Z", duration: 675 },

    { departure_id: 2, arrival_id: 1, datetime: "2024-07-21T15:10:00.000000Z", duration: 515 },
    { departure_id: 2, arrival_id: 1, datetime: "2024-07-21T17:25:45.112233Z", duration: 535 },

    { departure_id: 2, arrival_id: 3, datetime: "2024-06-15T12:00:00.000000Z", duration: 640 },
    { departure_id: 2, arrival_id: 3, datetime: "2024-06-15T14:30:20.445566Z", duration: 660 },

    { departure_id: 2, arrival_id: 4, datetime: "2024-05-27T14:15:00.000000Z", duration: 765 },
    { departure_id: 2, arrival_id: 4, datetime: "2024-05-27T16:50:35.223344Z", duration: 785 },

    { departure_id: 2, arrival_id: 5, datetime: "2024-04-12T17:30:00.000000Z", duration: 470 },
    { departure_id: 2, arrival_id: 5, datetime: "2024-04-12T19:40:50.334455Z", duration: 490 }
  ]
)

puts "Created #{Flight.count} flights"
