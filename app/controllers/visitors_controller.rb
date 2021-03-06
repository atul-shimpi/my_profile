class VisitorsController < ApplicationController
	def index
    params[:page_no] = 1
    page
=begin
    @visitors = Visitor.all_important.reverse_order!
    @pages = 45
    respond_to do |format|
      format.html { render :index }
		  format.xml { render xml: @visitors}
      format.json { render json: @visitors }
    end
=end
  end

  def page
    page_no = params[:page_no].to_i if params.include?('page_no')

    end_index = page_no * 15
    start_index = end_index - 15
    @visitors = Visitor.all_important.reverse_order![start_index...end_index]

    @pages = pages(Visitor.all_important.count, 15)

    respond_to do |format|
      format.html { render :index }
      format.xml { render xml: @visitors}
      format.json { render json: @visitors }
    end


  end
end
