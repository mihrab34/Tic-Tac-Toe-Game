# Tic-Tac-Toe-Game

This project is a part of [Microverse](https://www.microverse.org/) Ruby Curriculum

# Table of Content



* [About the Project](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#about-the-project)
* [Built With](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#built-with)
* [Usage Instruction](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#usage-instruction)
* [Game Rules](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#game-rules)
* [Authors](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#authors)
* [Contribution](https://github.com/mihrab34/Tic-Tac-Toe-Game/blob/development/README.md#contribution)

# ABOUT THE PROJECT

* The objective is to build a tic-tac-toe game on the command line where two human players can play against each other      and the board is displayed in between turns.
* The project was completed using Ruby language.
* Original project specification at [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/oop)
* Tic-Tac-Toe From [Wikipedia](https://en.wikipedia.org/wiki/Tic-tac-toe) for more details about Tic-Tac-Toe.

# BUILT WITH

This project was built using these technologies.

* Ruby
* Rubocop
* VsCode

# USAGE INSTRUCTIONS

* Clone the repository and run the app.

~~~~

$ git clone git@github.com:mihrab34/Tic_Tac_Toe-Game.git
$ cd  Tic_Tac_Toe
$ ruby bin/main.rb

~~~~

# GAME RULES

1. The game accepts only integers from 1 to 9.
2. It starts on player X's turn.

~~~~

=========TIC-TAC-TOE=========

Welcome to the TIC-TAC-TOE game!

Players enter their name.

The first player is 'Player X'

Choose numbers from 1 to 9 to select desired cell.

No duplicate numbers are allowed

-------------
|   |   |   |
-------------
|   |   |   |
-------------
|   |   |   |
-------------

Player X is the next to play! Make your move.

~~~~

3. After player X pick his number, it's player O turn.

~~~~

-------------
| X |   |   |
-------------
|   |   |   |
-------------
|   |   |   |
-------------

Player O is the next to play! Make your move.

~~~~

4. The game ends when either player wins...

~~~~

| X | O | O |
-------------
|   | X |   |
-------------
|   |   | X |
-------------

Player X won
==== GAME END ====

~~~~
Keep alternating moves until one of the players has drawn a row of three symbols.

 5. or it's a draw.

 ~~~~

-------------
| X | O | X |
-------------
| X | X | O |
-------------
| O | X | O |
-------------

It's a draw
==== GAME END ====
~~~~

# AUTHORS

[mihrab34](https://github.com/mihrab34)

[babs257](https://github.com/babs257)

# CONTRIBUTIONS

Any contributions are **greatly appreciated**

1. Fork the Project
2. Create your Feature Branch ```(git checkout -b feature/AmazingFeature)```
3. Commit your Changes ```(git commit -m 'Add some AmazingFeature')```
4. Push to the Branch ```(git push origin feature/AmazingFeature)```
5. Open a Pull Request