#require 'rspec'
require 'rails_helper'

describe Visitor do

  it 'should read all visitors' do
    create (:visitor)

    Visitor.all.each do |visitor|
      puts visitor.inspect
    end
  end

end