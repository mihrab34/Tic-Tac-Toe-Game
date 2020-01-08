#!/usr/bin/env ruby

# Game Logic

puts "Welcome to Tic Tac Toe!"
display_board
puts "What move would X like to make (1-9)?"
player_x = player_input(5)


# Methods

def display_board

    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
end

def player_input(input)

    player = gets.chomp.to_i
end

board = []
def player_move(array, index, value = "X")

    array[index] = value
end