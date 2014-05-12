class Director < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :movies


  # def movies
  #   return Movie.where(:director_id => id)
  # end
end
