class AddYearToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :year, :integer
    add_column :cars, :license_plate, :string
    add_column :cars, :fuel_tipe, :string
  end
end
