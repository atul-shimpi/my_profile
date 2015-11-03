require 'rails_helper'
require 'ip_address_locator/create_visitor_location'

describe CreateVisitorLocation do

  it 'should create a new visitor location' do
    CreateVisitorLocation.create(1, '199.21.99.207')
  end

end