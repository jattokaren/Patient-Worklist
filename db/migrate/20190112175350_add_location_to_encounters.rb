class AddLocationToEncounters < ActiveRecord::Migration[5.0]
  def change
    add_column :encounters, :latitude, :float
    add_column :encounters, :longitude, :float
  end
end
