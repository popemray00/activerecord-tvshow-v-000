class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.find_by(rating: highest_rating)
    show
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.find_by(rating: lowest_rating)
    show
  end

  def self.ratings_sum
    Show.sum(:rating)

  end
end
