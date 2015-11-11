require_relative 'ip_address_location'
require 'visitor_location'
require 'json'

class CreateVisitorLocation
  def self.create_all

  end

  def self.create(visitor_id, visitor_ip_address)

    attr_white_list = %w[ dma_code asn city latitude country_code offset country region_code isp
                          timezone area_code continent_code longitude postal_code country_code3
                        ]

    ip_location = JSON.parse(IPAddressLocation.get_location(visitor_ip_address).gsub('=>', ':'))
    ip_location_whitelist = ip_location.select { |key| attr_white_list.include?(key) }
    ip_location_whitelist[:visitor_id] = visitor_id
    VisitorLocation.create(ip_location_whitelist)
  end
end