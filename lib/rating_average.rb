module RatingAverage
 def rating_average
  	arr = self.ratings.map {|r|r.score}
  	sum =arr.inject(:+)
  	average =sum/arr.size
  end
end