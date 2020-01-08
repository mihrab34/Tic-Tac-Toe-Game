#!/usr/bin/env ruby

def welcome

    puts "Welcome to Tic Tac Toe!"
    puts '-------------INSTRUCTIONS---------------'
    puts 'The first player is X'
    puts 'Choose numbers from 1 to 9 to select desired cell'
    puts '--------------------------------'
end

# Request for player names and chip and save them into variables
puts 'Player 1 please enter your name: '
player_1 = gets.chomp

puts 'Player 2 please enter your name: '
player_2 = gets.chomp

print " #{player_1}, do you choose X or O ?"
chip_one = gets.chomp.to_s
chip_two = chip_one == 'X'? 'O' : 'X' 

def display_board

    puts '  1 | 2  | 3  '
    puts ' ------------ '
    puts '  4 |  5 | 6  ' 
    puts ' ------------ '
    puts '  7 |  8 | 9  '
end

welcome
display_board