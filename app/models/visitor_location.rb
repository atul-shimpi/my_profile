class VisitorLocation < ActiveRecord::Base
  belongs_to(:visitor)

  def place
    country_name + ', ' + region_name + ', ' + city
  end
end
