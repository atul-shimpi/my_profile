class Visitor < ActiveRecord::Base
  has_one(:visitor_location)
  scope :all_important, -> { where(is_important: true) }

  def visit_time_humanize
    created_at.strftime("%d-%m-%Y, %H:%M")
  end
end
