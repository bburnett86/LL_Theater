class Receipt < ActiveRecord::Base
  include ActiveModel::Validations

  belongs_to :showtime

  belongs_to :movie

  belongs_to :admin

  validates :first_name, :last_name, :email, :cc_info, :cc_exp_date, presence: true

  validate do |receipt|
    receipt.cc_expired?
  end

  def cc_expired?
    if self.cc_exp_date < Time.now
      errors.add(:cc_exp_date, :invalid_date, message: "Credit Card Expired")
    end
  end

  def self.total_sales
    tot_sales = 0
    Receipt.all.each do |receipt|
      tot_sales += receipt.sale_price
    end
    tot_sales
  end

  def self.total_sales_by_movie(movie_id)
    tot_sales = 0
    Receipt.where(movie_id: movie_id).each do |receipt|
      tot_sales += receipt.sale_price
    end
    tot_sales
  end

end
