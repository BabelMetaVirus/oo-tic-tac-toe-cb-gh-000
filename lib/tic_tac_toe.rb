# TicTacToe - game class for tic-tac-toe
#
# WIN_COMBINATIONS - constant holding the 8 winning configurations for
# =>                 tic-tac-toe
# @board - board to store the game state of TicTacToe
#
# initialize - read in an initial board state
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
  def initialize(board)
    @board = board
  end


end
