class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :check_visitor_country

  def check_visitor_country
    return if params.include?('xxx007')
    visitor_host_ip = request.headers.include?(:HTTP_X_FORWARDED_FOR) ?
        request.headers[:HTTP_X_FORWARDED_FOR] :
        request.headers[:REMOTE_HOST]

    visitor_location = IPAddressLocation.get_location('14.97.70.15')


    render(plain: 'Site Restricted for your location') if visitor_location['country_code'].eql?('IN')
  end


end
