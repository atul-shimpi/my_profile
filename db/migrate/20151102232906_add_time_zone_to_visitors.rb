class AddTimeZoneToVisitors < ActiveRecord::Migration
  def change
    add_column :visitor_locations, :timezone, :string, null: false, limit: 15
  end
end
