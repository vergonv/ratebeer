class Brewery < ActiveRecord::Base
  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers
  
    
  def average_rating
  	arr = self.ratings.map {|r|r.score}
  	sum =arr.inject(:+)
  	average =sum/arr.size
  
  end
end
