require 'uri'

class Movie < ActiveRecord::Base

  has_many :showtimes

  has_many :receipts

  belongs_to :movie_theater

  def url
    URI.escape(self.name)
  end

end
