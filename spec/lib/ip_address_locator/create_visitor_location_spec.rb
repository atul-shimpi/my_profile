require 'rails_helper'
require 'ip_address_locator/create_visitor_location'

describe CreateVisitorLocation do
  it 'should fetch and save location for all new visitors' do
    create (:visitor)
    create (:visitor)
    create (:visitor)

    Visitor.all.each { |visitor| visitor.visitor_location.inspect }

    Visitor.all.each { |visitor| CreateVisitorLocation.create(visitor.id, visitor.remote_ip) }
  end

  it 'should create a new visitor location' do
    create (:visitor)
    CreateVisitorLocation.create(1, '199.21.99.207')
  end

end