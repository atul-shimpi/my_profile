class CreateVisitorsBackups < ActiveRecord::Migration
  def change
    create_table :visitors_backups do |t|
      t.string :ip
    end
  end
end
