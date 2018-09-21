require_relative 'tictactoe'

class Valid < Tictactoe
 
	def coordinates_empty(x,y)
     value = true
    x = x.to_i
    y = y.to_i
    if board[x][y]  != " "
      puts "Warning::This place is occupied"
      value = false
    end 
   value 
  end
end

