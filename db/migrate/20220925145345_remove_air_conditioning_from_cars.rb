class RemoveAirConditioningFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :air_conditioning, :boolean
  end
end
