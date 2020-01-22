require_relative '../lib/game.rb'

RSpec.describe Game do
    let(:game) { Game.new }
    describe '#initialize' do
      it 'returns game object of the class Game' do
        expect(game).to be_an(Game)
      end
    end
  
    describe '#invalid_position' do
      it 'returns error message when the position is out of boundaries' do
        message_error = 'Position out of boundaries. Please numbers from 1 to 9'
        expect(game.invalid_position(15)).to eq(message_error)
      end
  
      it 'returns error message when the position is occupied' do
        message_error = 'Position occupied with X'
        game.move_game(1)
        expect(game.invalid_position(1)).to eq(message_error)
      end
  
      it 'returns false when is a valid position' do
        expect(game.invalid_position(1)).to eq(false)
      end
    end
  
    describe '#move_game' do
      it 'returns it is a draw message' do
        message = "It's a draw"
        game.move_game(1)
        game.move_game(3)
        game.move_game(2)
        game.move_game(4)
        game.move_game(6)
        game.move_game(5)
        game.move_game(7)
        game.move_game(8)
  
        expect(game.move_game(9)).to eq(message)
      end
  
      it 'returns false when there is no winner and there is no draw' do
        expect(game.move_game(9)).to eq(false)
      end
  
      it 'returns the champion is with the name of the player' do
        message = "The champion is Player X 'X'!!"
        game.move_game(1)
        game.move_game(4)
        game.move_game(2)
        game.move_game(5)
        expect(game.move_game(3)).to eq(message)
      end
    end
  
    describe '#current_turn' do
      it 'returns the actual turn if the turn is X' do
        expect(game.current_turn).to eq('X')
      end
  
      it 'returns the actual turn if the turn is O' do
        game.move_game(1)
        expect(game.current_turn).to eq('O')
      end
    end
  
    describe '#show_board' do
      it 'returns the empty board with the numbers displayed to play if there is no moves' do
        expect(game.show_board).to eq(" 1 | 2 | 3 \n---|---|---\n 4 | 5 | 6 \n---|---|---\n 7 | 8 | 9 ")
      end
  
      it 'returns the board with the current moves' do
        game.move_game(1)
        game.move_game(4)
        expect(game.show_board).to eq(" X |   |   \n---|---|---\n O |   |   \n---|---|---\n   |   |   ")
      end
    end
  
    describe '#reset_game' do
      it 'set the initial variables for the game' do
        game.reset_game
        expect(game.current_turn).to eq('X')
        expect(game.show_board).to eq(" 1 | 2 | 3 \n---|---|---\n 4 | 5 | 6 \n---|---|---\n 7 | 8 | 9 ")
        expect(game.total_turns).to eq(9)
      end
    end

    describe '#winner' do
      it 'return false if there is no winner' do
        game.move_game(1)
        expect(game.send(:winner, 0)).to eq(false)
      end
  
      it 'return the winner if there is one' do
        game.move_game(1)
        game.move_game(4)
        game.move_game(2)
        game.move_game(5)
        position = 3
        game.instance_eval('@board[position - 1] = \'X\'') # rubocop:disable Style/EvalWithLocation
        game.instance_eval('@turn_x = !@turn_x') # rubocop:disable Style/EvalWithLocation
        game.instance_eval('@total_turns -= 1') # rubocop:disable Style/EvalWithLocation
  
        expect(game.send(:winner, position - 1)).to eq('X')
      end
    end
  end