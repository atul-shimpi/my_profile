require 'ip_address_locator/ip_address_location'
require 'open-uri'

describe IPAddressLocation  do

  it 'is getting ip address location' do
    IPAddressLocation.get_location('199.21.99.207')
  end


end

