require_relative 'tictactoe'

class Win < Tictactoe

	  def check_win
	      winx = Array.new 
	      winy = Array.new 
	      for i in 0..@@board_size-1
	        winx[i] = "X"
	        winy[i] = "O"
	      end 

	      aux_array = Array.new
	      for i in 0..@@board_size-1
	        for j in 0..@@board_size-1
	          aux_array[j] = @@board[i][j] 
	        end 
	        if winx == aux_array
	          puts "the player 1 is the win"
	          exit
	        end
	        if winy == aux_array
	          puts "the player 2 is the win"
	          exit
	        end
	      end 

	      for i in 0..@@board_size-1
	        for j in 0..@@board_size-1
	          aux_array[j] = @@board[j][i] 
	        end 
	        if winx == aux_array
	          puts "the player 1 is the win"
	          exit
	        end
	        if winy == aux_array
	          puts "the player 2 is the win"
	          exit
	        end
	      end 

	      for i in 0..@@board_size-1
	        for j in 0..@@board_size-1
	          if(i == j)
	           aux_array[j] = @@board[j][i] 
	          end 
	        end 
	      end 
	      if winx == aux_array
	        puts "the player 1 is the win"
	        exit
	      end
	      if winy == aux_array
	        puts "the player 2 is the win"
	        exit
	      end
	      
	      for i in 0..@@board_size-1
	        for j in 0..@@board_size-1
	          if(i + j == @@board_size-1)
	           aux_array[j] = @@board[j][i] 
	          end 
	        end 
	      end 
	      if winx == aux_array
	        puts "the player 1 is the win"
	        exit
	      end
	      if winy == aux_array
	        puts "the player 2 is the win"
	        exit
	      end
    end
end
