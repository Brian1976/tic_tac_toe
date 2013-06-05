module TicTacToe
  class Board
    attr_accessor :state

    def initialize
      @state = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      @player = TicTacToe::Player.new
      run_game
    end

    def run_game
      run_turn(@player)
      puts @state
    end

    private

    def run_turn(player)
      @state[player.set_mark] = player.x_or_y
      #player.end_turn
    end
  end
end
