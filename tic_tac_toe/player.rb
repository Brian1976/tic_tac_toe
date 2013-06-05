module TicTacToe
  class Player
    attr_accessor :x_or_y, :set_mark

    def initialize
      @x_or_y = "x"
    end

    def set_mark
      choice = gets.chomp
      choice.to_i - 1
    end
  end
end
