class HomeController < ApplicationController
  def index
  	RequestHeader.create(remote_ip: request.headers[:REMOTE_ADDR],
												 remote_host: request.headers[:HTTP_X_FORWARDED_FOR],
												 server_name: request.headers[:SERVER_NAME]
												)	
  end
end
