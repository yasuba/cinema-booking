require './lib/seat'
require './lib/row'

class Row

  attr_reader :seats
  attr_accessor :available_seats

  def initialize
    @seats = Array.new(50) {|i| i = Seat.new}
  end

  # def available_seats
  #    @available_seats = @seats.reject { |s| !s.available? }.count
  # end

  def book_seats(*args)
    if args.count <= 5
      args.each { |seat| seat.book! }
    else
      raise "You can't book more than five seats in one booking"
    end
  end

end

