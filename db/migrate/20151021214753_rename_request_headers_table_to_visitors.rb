class RenameRequestHeadersTableToVisitors < ActiveRecord::Migration
  def change
    rename_table :request_headers, :visitors
  end
end
