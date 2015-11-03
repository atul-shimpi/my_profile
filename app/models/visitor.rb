class Visitor < ActiveRecord::Base
  has_one(:visitor_location)
  scope :all_important, -> { where(is_important: true) }
end
