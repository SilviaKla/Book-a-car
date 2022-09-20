class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    @booking.save!
    redirect_to car_path(@booking.car)
  end

  private


  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
