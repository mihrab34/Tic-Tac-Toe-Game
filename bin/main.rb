#!/usr/bin/env ruby

puts "Welcome to Tic Tac Toe!"
puts

def display_board

    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
end

puts "What move would X like to make (1-9)?"
puts

board = []
def player_input(input)

    player = gets.chomp.to_i
end

def player_move(array, index, value = "X")

end