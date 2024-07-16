class AddAirportIdsToFlights < ActiveRecord::Migration[7.1]
  def change
    add_reference :flights, :departure_airport, index: true
    add_reference :flights, :arrival_airport, index: true
  end
end
