class VisitorLocation < ActiveRecord::Base
  belongs_to(:visitor)

  def place
    place_ = country_name
    place_ += ',' + region_name if region_name.size > 0
    place_ += ',' + city if city.size > 0
    place_
  end
end
