class CarsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    if params[:query].present?
      @cars = Car.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.all
    end
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: {car: car})
      }
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @bookings = Booking.where(user: current_user)
    # The `geocoded` scope filters only flats with coordinates
    @car_map = Car.where(id: params[:id])
    @markers = @car_map.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:location, :description, :name, :price_per_day, :places, :km, :air_conditioning, photos: [])
  end

end
