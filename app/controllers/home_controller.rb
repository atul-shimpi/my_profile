class HomeController < ApplicationController
  def index
  	RequestHeader.create(remote_ip: request.headers[:REMOTE_ADDR],
												 remote_host: request.headers[:REMOTE_IP],
												 server_name: request.headers[:SERVER_NAME]
												)	
  end
end
