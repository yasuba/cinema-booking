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
    p args.count
    while args.count < 6
      args.each do |seat|
        seat.available? ? seat.book! : raise {'That seat has already been booked'}
      end
    # p "You can't book more than five seats in one booking"
    end
  end

end

