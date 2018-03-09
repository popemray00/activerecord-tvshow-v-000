def highest_rating
  shows.maximum('name')
end