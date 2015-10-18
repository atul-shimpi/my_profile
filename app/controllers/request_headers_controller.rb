class RequestHeadersController < ApplicationController
	def index
		@request_headers = RequestHeader.all.reverse_order!()
    @request = request.headers
	end
end
