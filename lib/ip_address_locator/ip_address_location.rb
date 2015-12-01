require 'open-uri'

class IPAddressLocation
  def self.get_location(ip_address)
    begin
      response = open(ip_url + '/json/' + ip_address).read
      JSON.parse(response)
    rescue Exception => e
      Rails.logger.info('Exception in IPAddressLocation:get_location ' + e.message)
      nil
    end
  end

  private
  def self.ip_url
    'http://freegeoip.net'
  end
end