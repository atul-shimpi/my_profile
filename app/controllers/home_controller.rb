class HomeController < ApplicationController
  def index
  	RequestHeader.create(remote_ip: request.headers[:HTTP_X_FORWARDED_FOR],
												 remote_host: request.headers[:REMOTE_IP],
												 server_name: request.headers[:SERVER_NAME]
												)	
  end
end
