class CreateMyApps < ActiveRecord::Migration
  def change
    create_table :my_apps do |t|
      t.string :domain
      t.string :description
      t.string :technologies
    end
  end
end
