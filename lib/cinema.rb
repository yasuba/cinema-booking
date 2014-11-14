require './lib/row'

class Cinema

  attr_reader :rows

  def initialize
    @rows = Array.new(100) {|i| i = Row.new}
  end

end