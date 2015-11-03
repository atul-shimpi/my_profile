class CreateVisitorLocations < ActiveRecord::Migration
  def change
    create_table :visitor_locations do |t|
      t.belongs_to :visitor
      t.string :dma_code, limit: 5
      t.string :asn, limit: 10
      t.string :city, limit: 30, null: false
      t.decimal :latitude, precision: 4, scale: 4, null: false
      t.decimal :longitude, precision: 4, scale: 4, null: false
      t.string :country_code, limit: 5, null: false
      t.integer :offset
      t.string :country, limit: 25, null: false
      t.string :region_code, limit: 5
      t.string :isp, limit: 50, null: false
      t.string :time_zone, limit: 50, null: false
      t.string :area_code, limit: 5
      t.string :continent_code, limit: 5, null: false
      t.string :region, limit: 25
      t.string :postal_code, limit: 25
      t.string :country_code3, limit: 5
    end
  end
end
