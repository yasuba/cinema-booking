require './lib/seat'

class Row

  attr_reader :seats
  attr_accessor :available_seats

  def initialize
    @seats = Array.new(50) {|i| i = Seat.new}
  end

  def seat_count
    @seats.count
  end

  def available_seats
     @available_seats = @seats.reject { |s| !s.available? }.count
  end

  def book_seats(*args)
    if args.count <= 5
      args.each { |seat| seat.available? ? seat.book! : raise {'That seat has already been booked'} }
    else
      raise "You can't book more than five seats in one booking"
    end
  end

end

