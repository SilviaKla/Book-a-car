class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    @booking.save!
    redirect_to car_booking_path(@car.id, @booking.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @car = Car.find(params[:car_id])
    @owner = @car.user
    @user = current_user
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path, status: :see_other
  end

  private


  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

end
