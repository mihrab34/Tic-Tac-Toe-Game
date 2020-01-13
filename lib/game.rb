class Game
    attr_accessory :total_turns

    def initialize(player1 = Player.new('X'), player2 = Player.new('O'))
        @player = {
            x: player1,
            o: player2
        }
        reset_game
    end

    private

    def winner (final_p)
        current_value = @turn_x ? 'O' : 'X'
        winner_cases = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        winner_cases.each do |x|
            next unless x.include? final_p
            if current_value == @board[x[0]] && current_value == @board[x[1]] && current_value == @board[x[2]]
                return current_value
            end
        end
        false
    end

    public

    def invalid_position(position)

    end

    def move_game 

    end

    def current_turn
        @turn_x ? 'X' : 'O'
    end

    def show_board

    end
        
    def reset_game
        @turn_x = true
        @board = [nil] * 9
        @total_turns = 9
    end
end  