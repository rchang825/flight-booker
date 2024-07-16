class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [ a.code, a.id ] }
    @date_options = Flight.all.map{|f| [f.date.strftime("%m/%d/%Y"), f.id] }
  end
end
