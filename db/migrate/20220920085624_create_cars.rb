class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.float :price_per_day
      t.integer :places
      t.integer :km
      t.boolean :air_conditioning, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
