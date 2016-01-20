require_relative("lib/pieces.rb")

class Board
	def initialize
		@board = [ 
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]

		@board[1][8] = Rook.new(1, 8, "black")
		@board[2][8] = Knight.new(2, 8, "black")
		@board[3][8] = Bishop.new(3, 8, "black")
		@board[4][8] = King.new(4, 8, "black")
		@board[5][8] = Queen.new(5, 8, "black")
		@board[6][8] = Bishop.new(6, 8, "black")
		@board[7][8] = Knight.new(7, 8, "black")
		@board[8][8] = Rook.new(8, 8, "black")

		@board[1][7] = BlackPawn.new(1, 7, "black")
		@board[2][7] = BlackPawn.new(2, 7, "black")
		@board[3][7] = BlackPawn.new(3, 7, "black")
		@board[4][7] = BlackPawn.new(4, 7, "black")
		@board[5][7] = BlackPawn.new(5, 7, "black")
		@board[6][7] = BlackPawn.new(6, 7, "black")
		@board[7][7] = BlackPawn.new(7, 7, "black")
		@board[8][7] = BlackPawn.new(8, 7, "black")


		# 		Black Pieces



	end


		# The move? method is really asking is it okay if we do this?
	def move_piece(dest_x, dest_y)
		p @board[4][8].move?(dest_x, dest_y)
		# If return true, insert new coords
	end
end




board = Board.new

board.move_piece(4, 8)
board.move_piece(6, 4)



