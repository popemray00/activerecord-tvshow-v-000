class Show < ActiveRecord::Base
  def highest_rating
    shows.maximum('name')
  end
end
