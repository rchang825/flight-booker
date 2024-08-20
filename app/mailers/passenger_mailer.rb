class PassengerMailer < ApplicationMailer
  default from: 'notifications@bookings.com'

  def confirmation_email
      @passenger = params[:passenger]
      mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
