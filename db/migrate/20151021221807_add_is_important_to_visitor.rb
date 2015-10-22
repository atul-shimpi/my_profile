class AddIsImportantToVisitor < ActiveRecord::Migration
  def change
    add_column :visitors, :is_important, :boolean, :default => true
  end
end
