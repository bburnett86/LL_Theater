class MovieTheater < ActiveRecord::Base

  has_many :auditoria

  has_many :movies

  has_many :showtimes

  belongs_to :admin

end
