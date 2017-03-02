class Receipt < ActiveRecord::Base
  include ActiveModel::Validations

  belongs_to :showtime

  validates :name, :email, :cc_info, :cc_exp_date, presence: true
  validates :cc_info, length: {is: 16}

  validate do |receipt|
    receipt.cc_expired?
    receipt.showtime.tickets_available?
  end

  def cc_expired?
    p self
    puts
    puts
    if Time.now > self.cc_exp_date
      errors.add(:cc_exp_date, :invalid_date, message: "Credit Card Expired")
    end
  end

  def self.total_sales
    tot_sales = 0
    Receipt.all.each do |receipt|
      tot_sales += receipt.showtime.price
    end
    tot_sales
  end

  def self.total_sales_by_movie(movie_id)
    tot_sales = 0
    Movie.find(movie_id).showtimes.each do |showtime|
      tickets_sole = 0
      price = 0
      tickets_sold = showtime.receipts.length
      price = showtime.price
      tot_sales += (tickets_sold * price)
    end
    tot_sales
  end


  def cc_num_receipt
    raw_cc = self.cc_info
    cc_info = raw_cc.gsub(/(?=\d{5})\d/,"*")
    return cc_info
  end

end
