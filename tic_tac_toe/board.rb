module TicTacToe
  class Board
    attr_accessor :state

    def initialize
      @state = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      @player_x = TicTacToe::Player.new("x")
      @player_y = TicTacToe::Player.new("y")
      @current_player = @player_x
      run_game
    end

    def run_game
      run_turn(@current_player)
      puts "\n"
      puts @state
      puts "\n"
    end

    private

    def run_turn(player)
      @state[player.set_mark] = player.x_or_y
      next_player
    end

    def next_player
      case @current_player
      when @player_x
        @current_player = @player_y
      else
        @current_player = @player_x
      end
    end
  end
end
