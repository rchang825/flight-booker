class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    num_tickets = params[:num_tickets].to_i
    num_tickets.times do
      @booking.passengers.build
    end
  end

  def create

  end

end
