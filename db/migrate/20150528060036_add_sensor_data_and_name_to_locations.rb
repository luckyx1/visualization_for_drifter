class AddSensorDataAndNameToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :sensor_data, :text
    add_column :locations, :sensor_name, :text
  end
end
