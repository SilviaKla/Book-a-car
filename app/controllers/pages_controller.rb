class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def profile
    @cars = Car.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @cars.each do |car|
      @bookings_car = car.bookings
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def car_params
    params.require(:car).permit(:location, :description, :name, :price_per_day, :places, :km, :air_conditioning, photos: [])
  end
end
