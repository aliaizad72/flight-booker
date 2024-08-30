class AddCityToAirport < ActiveRecord::Migration[7.2]
  def change
    add_column :airports, :city, :string
  end
end
