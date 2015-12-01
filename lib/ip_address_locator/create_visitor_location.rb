require_relative 'ip_address_location'
require 'visitor_location'
require 'json'

class CreateVisitorLocation
  def self.create_all
    Rails.logger.info('Getting visitors IP location started')

    Visitor.all.each do |visitor|
      create(visitor.id, visitor.remote_ip) if visitor.visitor_location.nil?
    end

     Rails.logger.info('Getting visitors IP location completed')
  end

  def self.create(visitor_id, visitor_ip_address)
    Rails.logger.info('Getting visitors IP location for IP : ' + visitor_ip_address)

    attr_white_list = %w[ country_code region_code country_name region_name city zip_code
                          time_zone latitude longitude metro_code
                        ]

    location = IPAddressLocation.get_location(visitor_ip_address)

    if location
      #ip_location = JSON.parse(location.gsub('=>', ':'))
      ip_location_whitelist = location.select { |key| attr_white_list.include?(key) }
      ip_location_whitelist[:visitor_id] = visitor_id

      VisitorLocation.create(ip_location_whitelist)
    else
      Rails.logger.info('Caught error while getting ip location for ' + visitor_ip_address)
    end

    Rails.logger.info('Getting visitors IP location for IP : ' + visitor_ip_address + ' completed')
  end
end
