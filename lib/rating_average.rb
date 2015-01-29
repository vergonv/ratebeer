module RatingAverage
 def rating_average
  	arr = self.ratings.map {|r|r.score}
  	sum =arr.inject(:+)
  	average =sum/arr.size
  	average = average.to_f
  end
end