class VisitorsController < ApplicationController
	def index
    @visitors = Visitor.all_important.reverse_order!

    respond_to do |format|
      format.html { render :index }
		  format.xml { render xml: @visitors}
      format.json { render json: @visitors }
    end
  end

  def page
    page_no = params[:page_no].to_i if params.include?('page_no')

    end_index = page_no * 15
    start_index = end_index - 15
    #@visitors = Visitor.all_important.reverse_order![start_index...end_index]
    @visitors = Visitor.all_important[start_index...end_index]

    @pages = pages(Visitor.all_important.count, 15)

    respond_to do |format|
      format.html { render :index }
      format.xml { render xml: @visitors}
      format.json { render json: @visitors }
    end


  end
end
