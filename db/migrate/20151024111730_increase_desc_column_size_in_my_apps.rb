class IncreaseDescColumnSizeInMyApps < ActiveRecord::Migration
  def change
    change_column :my_apps, :description, :string, :limit => 1024
  end
end
