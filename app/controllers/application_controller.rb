class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def pages(record_count, page_size)
    arr = (record_count.to_f / page_size.to_f).divmod(1)
    pages = arr[0]
    pages += 1 if arr[1] > 0
    pages
  end


end
