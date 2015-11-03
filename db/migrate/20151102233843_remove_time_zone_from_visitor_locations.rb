class RemoveTimeZoneFromVisitorLocations < ActiveRecord::Migration
  def change
    remove_column :visitor_locations, :time_zone, :string
  end
end
