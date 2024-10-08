class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [ a.code, a.code ] }
    @date_options = Flight.all.map{|f| [f.date.strftime("%m/%d/%Y"), f.date.strftime("%Y%m%d")] }
    puts "PARAMSSSSSSSSSS"
    puts params.inspect
    @flights = find_flights if params[:departure_code]
  end

  private
  def find_flights
    departure_airport = Airport.find_by(code: params[:departure_code])
    arrival_airport = Airport.find_by(code: params[:arrival_code])
    date = DateTime.parse(params[:date])
    Flight.where(departure_airport: departure_airport, arrival_airport: arrival_airport, date: date)
  end
end
