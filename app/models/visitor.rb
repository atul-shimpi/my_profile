class Visitor < ActiveRecord::Base
  scope :all_important, -> { where(is_important: true) }
end
