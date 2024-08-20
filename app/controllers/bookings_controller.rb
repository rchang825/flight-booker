class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @booking = Booking.new
    num_tickets = params[:num_tickets].to_i
    num_tickets.times do
      @booking.passengers.build
    end
  end

  def create
    #You’ll need your #create action to create a new Booking (linking it to the appropriate Flight)
    #but it will also need to accept the nested attributes for each of the Passenger objects and
    #create a new Passenger from them. Be mindful of allowing the nested parameters as well.
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
      @booking.passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger).confirmation_email.deliver_later
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email])
  end
end
