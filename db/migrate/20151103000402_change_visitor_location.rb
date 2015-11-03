class ChangeVisitorLocation < ActiveRecord::Migration
  def change
    change_column :visitor_locations, :timezone, :string, limit: 30
  end
end
