module TicTacToe
  class Board
    BLANK_BOARD = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

    attr_accessor :state

    def initialize
      @current_state = BLANK_BOARD
      @player_x = TicTacToe::Player.new("x")
      @player_y = TicTacToe::Player.new("y")
      @current_player = @player_x
      run_game
    end

    def run_game
      loop do
        run_turn(@current_player)
        puts "\n"
        puts @current_state
        break if check_if_won
        next_player
        puts "\n"
      end
      puts "You won!"
    end

    private

    def run_turn(player)
      puts "#{ @current_player.x_or_y } play: "
      @current_state[player.set_mark] = player.x_or_y
    end

    def next_player
      case @current_player
      when @player_x
        @current_player = @player_y
      else
        @current_player = @player_x
      end
    end


    def check_if_won
      current_player = @current_player.x_or_y
      player_won = false

      TicTacToe::WINNING_PATTERNS.each do |pattern|
        match_count = 0
        pattern.each do |i|
          if @current_state[i] == current_player
            match_count += 1
          end
        end
        (player_won = true) if match_count == 3
      end
      player_won
    end
    
    def end_game
      
    end
  end
end
