require 'open-uri'

class IPAddressLocation
  def self.get_location(ip_address)
    uri = URI.parse(ip_url + ip_address)
    uri.read
  end

  private
  def self.ip_url
    'http://www.telize.com/geoip/'
  end
end