require 'open-uri'

class IPAddressLocation
  def self.get_location(ip_address)
    begin
      open(ip_url + '/json/' + ip_address).read
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