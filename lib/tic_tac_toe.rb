# TicTacToe - game class for tic-tac-toe
#
# WIN_COMBINATIONS -  constant holding the 8 winning configurations for
#                     tic-tac-toe
# SEPARATOR -         row separator for board display
# @board -            board to store the game state of TicTacToe
#
# initialize - read in an initial board state
# => board -          the initial board state

# display_board - write the board to the CLI

# input_to_index - convert input to a board spaces
# => input -          user input as a string "1"-"9"
# <= string           the string in the requested board space
#
# move -              writes a move to the board
# => index -          index of the space to make a move
# => token -          symbol to place on the board, (default: "X")
#
# position_taken? - tests to see if a position is occupied
# => index -          index of the position to check
# <= boolean          true if the position is occupied, false otherwise
#
# valid_move? - checks a position and determines if the move is valid_move
# => index -          the space to check for validity
# <= boolean          true if the position is present on the game board and
#                     not already filled, false otherwise
# turn - logical method to execute a turn of tic-tac-toe
# 1) Asks the user to specify a position in the range 1-9.
# 2) Receives the user's input.
# 3) Translate the input into an index value.
# 4) If the move is valid, make the move and display the board.
# 5) If the move is invalid, ask for a new move until a valid move is received.
#
# turn_count - Determine the number of turns that have been played by
#                     referencing the @board variable
# <= integer          the number of turns that have been played
#
# current player - Determines which player's turn it is
# <= string           "X" or "O" as appropriate
#
# won? - determines if a winning combination has been reached
# <= array(integer)   array of integers corresponding to a winning combination
# <= nil              if no winning combination is present
#
# full? - determine if the board has no open spaces
# <= boolean          true if the board is completely filled, false otherwise
class TicTacToe
    WIN_COMBINATIONS = [  # row cominations
                        [0,1,2],
                        [3,4,5],
                        [6,7,8],
                        # column combinations
                        [0,3,6],
                        [1,4,7],
                        [2,5,8],
                        # diagonal combinations
                        [0,4,8],
                        [2,4,6]]
    SEPARATOR = "-----------"

    def initialize
      board = []
      9.times{board << " "}
      @board = board
    end

    def display_board
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts SEPARATOR
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts SEPARATOR
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def input_to_index(input)
      int index = input.to_i - 1
      return @board[index]
    end
end
