class VisitorLocation < ActiveRecord::Base
  belongs_to(:visitor)

  def place
    %W[#{country_name} #{region_name}].reject(&:blank?).join(',')
  end

  def flag
    'flags/24/' + country_code.downcase + '.png'
  end
end
