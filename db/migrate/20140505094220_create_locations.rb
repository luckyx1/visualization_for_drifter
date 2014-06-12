class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :time
      t.boolean :valid_input
      t.float :gps_speed
      t.text :drifter_name
      t.timestamps
    end
  end
end
