class RequestHeadersController < ApplicationController
	def index
		@request_headers = RequestHeader.all()
	end
end
