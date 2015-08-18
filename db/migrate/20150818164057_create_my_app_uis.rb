class CreateMyAppUis < ActiveRecord::Migration
  def change
    create_table :my_app_uis do |t|
      t.belongs_to :my_app, index:true
      t.string :name
      t.string :image_path
    end
  end
end
