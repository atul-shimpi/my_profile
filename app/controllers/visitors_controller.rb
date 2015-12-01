class VisitorsController < ApplicationController
	def index
    @visitors = Visitor.all_important.reverse_order!

    puts request.inspect
    respond_to do |format|
      format.html { render :index }
		  format.xml { render xml: @visitors}
      format.json { render json: @visitors }
    end
	end
end
