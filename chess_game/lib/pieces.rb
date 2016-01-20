require_relative("master_piece_structure.rb")

class King < Pieces

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if (dx == 0 || dx == 1) ||
			(dy == 0 || dy == 1)
			true
		else
			false
		end
	end
end
# 			This is the King
#_____________________________________________

class Rook < Pieces

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if (dx == 0 && dy != 0) ||
			(dx != 0 && dy == 0)
			true
		else
			false
		end
	end
end
# 			This is the Rook
#_____________________________________________


class Bishop < Pieces

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if dx == dy
			true
		else
			false
		end
	end
end
# 			This is the Bishop
#_____________________________________________


class Knight < Pieces
	
	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if (dx == 2 && dy == 1) ||
			(dy == 2 && dx == 1)
			true
		else
			false
		end
	end
end
# 			This is the Knight
#_____________________________________________

class Queen < Pieces

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if dx == dy
			true
		elsif (dx == 0 && dy != 0) ||
			(dx != 0 && dy == 0)
			true
		else
			false
		end
	end
end
# 			This is the Queen
#_____________________________________________

class Pawn < Pieces

	def move?(dest_x, dest_y)
		@dx = (dest_x - @pos_x)
		@dy = (dest_y - @pos_y)
	end

end


class BlackPawn < Pawn	
	def move?(dest_x, dest_y)
		super
		if @pos_y == 7 && @dx == 0
			(@dy == (-1) || @dy == (-2))
			
		elsif @pos_y < 7
			(@dx == 0 && @dy == (-1))
		else
			false
		end
	end
end

class WhitePawn < Pawn
	def move?(dest_x, dest_y)
		super
		if @pos_y == 2 && @dx == 0
			(@dy == 1 || @dy == 2)
		elsif @pos_y > 2 
			(@dx == 0 && @dy == 1)
		else
			false
		end
	end
end
# 			This is the Pawn
#_____________________________________________
