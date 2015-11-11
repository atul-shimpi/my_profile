class ChangeVisitorLocationsCityColumnToNoNull < ActiveRecord::Migration
  def change
    change_column_null :visitor_locations, :city, true
  end
end
