class Showtime < ActiveRecord::Base
  include ActiveModel::Validations

  belongs_to :movie

  belongs_to :auditorium

  has_many :receipts

  validate do |showtime|
    showtime.auditorium_available?
  end


  def available_seats
    taken_seats = self.receipts.length
    return self.auditorium.capacity - taken_seats
  end

  def tickets_available?
    if self.available_seats <= 0
      errors.add(:auditorium_id, :no_seats_avail, message: "There aren't any more available seats for this showtime.")
    end
  end

  def auditorium_available?
    Showtime.where(auditorium_id: self.auditorium_id).each do |showtime|
      if self.start.between?(showtime.start, showtime.finish) || self.finish.between?(showtime.start, showtime.finish)
        errors.add(:start, :invalid_time, message: "Auditorium currently in use when this showtime would be viewing.")
        return false
      else
        return true
      end
    end
  end

end
