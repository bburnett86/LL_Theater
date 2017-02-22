class Auditorium < ActiveRecord::Base

  has_many :showtimes

  belongs_to :movie_theater

end
