class DropVisitorsLocation < ActiveRecord::Migration
  def change
    drop_table :visitor_locations

    create_table :visitor_locations do |t|
      t.belongs_to :visitor
      t.string :dma_code, limit: 5
      t.string :asn, limit: 10
      t.string :city, limit: 30
      t.decimal :latitude, precision: 10, scale: 4
      t.decimal :longitude, precision: 10, scale: 4
      t.string :country_code, limit: 5
      t.integer :offset
      t.string :country_name, limit: 25
      t.string :region_code, limit: 5
      t.string :isp, limit: 50
      t.string :time_zone, limit: 50
      t.string :area_code, limit: 5
      t.string :continent_code, limit: 5
      t.string :region_name, limit: 25
      t.string :postal_code, limit: 25
      t.string :country_code3, limit: 5
      t.string :metro_code, limit: 5
      t.string :time_zone, limit: 25
      t.string :zip_code, limit: 15
    end

  end
end
