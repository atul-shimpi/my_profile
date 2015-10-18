class RequestHeadersController < ApplicationController
	def index
		@request_headers = RequestHeader.all()
    @request = request.headers
	end
end
