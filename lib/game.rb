require_relative 'player.rb'

class Game
    attr_reader :total_turns

    def initialize(player1 = Player.new('X'), player2 = Player.new('O'), board = (1..9).to_a)
        @player = {
            x: player1,
            o: player2
        }
        @board = board
        reset_game
    end

    def invalid_position(position)
        return "Position occupied with #{@board[position - 1]}" unless @board[position - 1].nil?
        return 'Position out of boundaries. Please numbers from 1 to 9' unless position >= 1 && position <= 9

    false

    end

    def move_game(position) 
        @board[position - 1] = current_turn
        @turn_x = !@turn_x
        @total_turns -= 1
        winner = winner(position - 1)

    return "It's a draw" if !winner && total_turns < 1

    return winner unless winner

        @total_turns = 0 if winner
    return "The champion is #{@player[winner.downcase.to_sym].name} '#{winner}'!!" if winner
    end

    def current_turn
        @turn_x ? 'X' : 'O'
    end

    def show_board
        numbers_with_vertical_sides = [1, 4, 7]
        board = ''
        9.times do |x|
        board += numbers_with_vertical_sides.include?(x) ? '|' : ''
        board += if @total_turns == 9
                 " #{x + 1} "
                else
                 " #{@board[x] || ' '} "
               end
        board += numbers_with_vertical_sides.include?(x) ? '|' : ''
        board += numbers_with_vertical_sides.include?(x + 2) ? "\n---|---|---\n" : ''
    end
    board
    end

    def reset_game
        @turn_x = true
        @board = [nil] * 9
        @total_turns = 9
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
end  