class IncreaseRegionNameSize < ActiveRecord::Migration
  def change
    change_column :visitor_locations, :region_name, :string, :limit => 50
  end
end
