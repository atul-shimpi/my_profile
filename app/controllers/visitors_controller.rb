class VisitorsController < ApplicationController
	def index
		@request_headers = RequestHeader.all.reverse_order!
	end
end
