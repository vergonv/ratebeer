class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  
  def average_rating
  	arr = self.ratings.map {|r|r.score}
  	sum =arr.inject(:+)
  	average =sum/arr.size
  end
  
  def to_s
  	"#{self.name}    #{self.brewery.name}"
  end
end
