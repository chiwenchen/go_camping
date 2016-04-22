class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :campsites, :latitude, :float
    add_column :campsites, :longitude, :float
  end
end
