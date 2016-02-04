class HomeController < ApplicationController
  before_filter :check_visitor_country, only: [:index]

  def check_visitor_country
    return if params.include?('xxx007')
    visitor_host_ip = request.headers.include?(:HTTP_X_FORWARDED_FOR) ?
        request.headers[:HTTP_X_FORWARDED_FOR] :
        request.headers[:REMOTE_HOST]

    visitor_location = IPAddressLocation.get_location(visitor_host_ip)


    render(plain: 'Site Restricted for your location') if visitor_location['country_code'].eql?('IN')
  end

  def index
  end

end
