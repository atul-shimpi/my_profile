class HomeController < ApplicationController
  def index
    # if web server is behind proxy/NAT, then HTTP_X_FORWARDED_FOR contains the IP of origin
    # if not then REMOTE_HOST contains the IP of origin
    requesting_host_ip = request.headers.include?(:HTTP_X_FORWARDED_FOR) ?
                         request.headers[:HTTP_X_FORWARDED_FOR] :
                         request.headers[:REMOTE_HOST]
  	RequestHeader.create(remote_ip: requesting_host_ip,
												 remote_host: request.headers[:REMOTE_IP],
												 server_name: request.headers[:SERVER_NAME]
												)	
  end
end
