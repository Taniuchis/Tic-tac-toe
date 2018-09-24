require_relative 'tictactoe'

class Valid < Tictactoe

	def size_valid(board_size)
    if board_size == 0 
      puts "Warning::Chooise other size"
    end 
  end
 
	def coordinates_empty(x,y,board)
     value = true
    x = x.to_i
    y = y.to_i
    if board[x][y]  != " "
      puts "Warning::This place is occupied"
      value = false
    end 
   value 
  end

  def coordinates_valid(coorx,coory,board)
    value = true
    x = coorx.to_i
    y = coory.to_i
    
     begin  
       board[x][y]
       rescue  
        puts 'Warning::Error in the coordinates write others'  
        value = false 
     end  
     if (value == true)
      value = Valid.new.coordinates_empty(x,y,board)
     end 
    value
  end
end

