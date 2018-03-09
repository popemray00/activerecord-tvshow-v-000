class Show < ActiveRecord::Base
  def highest_rating
    CreateShows.maximum(:name)
  end
end
