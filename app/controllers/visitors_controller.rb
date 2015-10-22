class VisitorsController < ApplicationController
	def index
		@visitors = Visitor.all_important.reverse_order!
	end
end
