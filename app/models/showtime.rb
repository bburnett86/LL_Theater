class Showtime < ActiveRecord::Base
  include ActiveModel::Validations

  belongs_to :movie

  belongs_to :auditorium

  has_many :receipts

  validate do |showtime|
    showtime.auditorium_available?(self.start, self.finish)
    showtime.tickets_available?
  end


  def available_seats
    taken_seats = Showtime.where(auditorium_id: self.auditorium_id).where(start: self.start).length
    return self.auditorium.capacity - taken_seats
  end

  def tickets_available?
    if self.available_seats <= 0
      errors.add(:auditorium_id, :no_seats_avail, message: "There aren't any more available seats for this showtime.")
    end
  end

  def auditorium_available?(start_time, end_time)
    Showtime.where(auditorium_id: self.auditorium_id).each do |showtime|
      if start_time.between?(showtime.start, showtime.finish) || end_time.between?(showtime.start, showtime.finish)
        errors.add(:start, :invalid_time, message: "Auditorium currently in use when this showtime would be viewing.")
      end
    end
  end

end
