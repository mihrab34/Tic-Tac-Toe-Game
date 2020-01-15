#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

# Welcome Message

puts "Welcome to Tic Tac Toe!"
puts '-------------INSTRUCTIONS---------------'
puts 'Choose numbers from 1 to 9 to select desired cell'
puts 'Whoever gets a straight line first wins'
puts '--------------------------------'

def asking_names(turn)
  puts "What is your name (Turn #{turn})?"
  name = gets.chomp
  name
end

puts 'Hello welcome to the Tic Tac Toe Game'
player1 = Player.new('X', asking_names('X'))
player2 = Player.new('O', asking_names('O'))
puts '--------------------------------------'
puts 'Board displayed'

game = Game.new(player1, player2)

puts game.show_board

flag = true
while flag
  flag = false
  while game.total_turns.positive?
    puts "#{game.current_turn == 'X' ? player1.name : player2.name} pick a number to set the turn '#{game.current_turn}' "
    position = gets.chomp
    puts '--------------------------------------'

    invalid_p = game.invalid_position(position.to_i)
    status_game = invalid_p || game.move_game(position.to_i)

    if status_game
      puts status_game
    else
      puts 'Next turn'
    end

    puts '--------------------------------------'
    puts game.show_board
  end

  puts ''
  puts 'Do you want to play again? (y/n):'
  answer = gets.chomp
  if answer.downcase == 'y'
    flag = true
    game.reset_game
    puts '--------------------------------------'
    puts game.show_board
  else
    puts 'Thanks for playing'
  end
end