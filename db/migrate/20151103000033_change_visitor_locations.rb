class ChangeVisitorLocations < ActiveRecord::Migration
  def change
    change_column :visitor_locations, :latitude, :text, precision: 10, scale: 4
    change_column :visitor_locations, :longitude, :text, precision: 10, scale: 4
  end
end
