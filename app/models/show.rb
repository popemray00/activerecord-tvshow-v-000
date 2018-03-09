class Show < ActiveRecord::Base
  def highest_rating
    Shows.maximum(:name)
  end
end
