class MovieTheater < ActiveRecord::Base

  has_many :auditoria

  has_many :movies

  belongs_to :admin

end
