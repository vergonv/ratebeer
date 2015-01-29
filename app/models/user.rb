class User < ActiveRecord::Base
 include RatingAverage
 has_secure_password
 validates :username, uniqueness: true, length: { minimum: 3, maximum:15 }
 validates :password,  length: { minimum: 4}
 has_many :raters, -> { uniq }, through: :ratings, source: :user
 has_many :beers, through: :ratings
 has_many :beer_clubs, through: :memberships
 has_many :ratings
 has_many :memberships
 def to_s  
   "#{self.beer.name}    #{self.score}"
  end
end
