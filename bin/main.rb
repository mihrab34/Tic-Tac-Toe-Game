#!/usr/bin/env ruby

# Welcome Message

puts "Welcome to Tic Tac Toe!"
puts '-------------INSTRUCTIONS---------------'
puts 'Choose numbers from 1 to 9 to select desired cell'
puts 'Whoever gets a straight line first wins'
puts '--------------------------------'

# Request for player names and chip and save them into variables

puts 'Player 1 please enter your name: '
player_1 = gets.chomp

puts 'Player 2 please enter your name: '
player_2 = gets.chomp

print " #{player_1}, do you choose X or O ? "
chip_one = gets.chomp.to_s
puts "#{player_1} choose #{chip_one} "
chip_two = chip_one == 'X'? 'O' : 'X'
puts "#{player_2} choose #{chip_two}\n\n"

puts 'START'

# Display Board to Players
puts
puts '  1 | 2  | 3  '
puts ' ------------ '
puts '  4 |  5 | 6  ' 
puts ' ------------ '
puts '  7 |  8 | 9  '

# Players choose a desired cell number
puts "#{player_1} choose a number to select desired cell"
player_1_choice = gets.chomp
puts
puts '  1 | 2  | 3  '
puts ' ------------ '
puts '  4 |  X | 6  ' 
puts ' ------------ '
puts '  7 |  8 | 9  '

move = gets.chomp
  status_game = move_game
  # Calling move_game(move) method to check if the move is valid

  if status_game # status game is true when there is an error
    puts 'ERROR your move is invalid' # We inform that there is an error and ask again for the position.
    next # We keep the same turn,skipping the rest of the code and asking again for the position.
  else
    puts 'Next turn' # We let the loop continue and change the turn
  end

puts "#{player_2} choose a number to select desired cell"
player_2_choice = gets.chomp
puts
puts '  1 | 2  | O  '
puts ' ------------ '
puts '  4 |  X | 6  ' 
puts ' ------------ '
puts '  7 |  8 | 9  '

move = gets.chomp
  status_game = move_game
  # Calling move_game(move) method to check if the move is valid

  if status_game # status game is true when there is an error
    puts 'ERROR your move is invalid' # We inform that there is an error and ask again for the position.
    next # We keep the same turn,skipping the rest of the code and asking again for the position.
  else
    puts 'Next turn' # We let the loop continue and change the turn
  end

# Players continue to play until a winner emerges

#During the game

game_on = true
while game_on
  #performs repetitive render
  if winner # and/or draw 
    game_on = false
  end
end

# Winner Comments

puts "#{player_1} has won"

puts "#{player_2} has won"

puts "It's a draw."

puts "Thank you for playing."

