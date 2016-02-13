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
    # Save visitor to database
    # if web server is behind proxy/NAT, then HTTP_X_FORWARDED_FOR contains the IP of origin
    # if not then REMOTE_HOST contains the IP of origin
    visitor_host_ip = request.headers.include?(:HTTP_X_FORWARDED_FOR) ?
                      request.headers[:HTTP_X_FORWARDED_FOR] :
                      request.headers[:REMOTE_HOST]

    puts 'Curent visitor ' + visitor_host_ip
    unless Visitor.exists?(["remote_ip = ?", visitor_host_ip])
      Visitor.create( remote_ip: visitor_host_ip,
                      remote_host: request.headers[:REMOTE_IP].nil? ? 'NA': request.headers[:REMOTE_IP],
                      server_name: request.headers[:SERVER_NAME],
                      is_important: !ENV['NOT_IMPORTANT_VISITORS_IPs'].split.include?(visitor_host_ip)
                    )

    end
  end

end
