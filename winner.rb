require_relative 'tictactoe'

class Win < Tictactoe
	@@winx = Array.new 
	@@winy = Array.new 
  def combo_win 
    for i in 0..@@board_size-1
      @@winx[i] = "X"
      @@winy[i] = "O"
    end 
  end

  def check_win(board)
		combo_win
		aux_array = Array.new
    for i in 0..@@board_size-1
      for j in 0..@@board_size-1
        aux_array[j] = board[i][j] 
      end 
      if @@winx == aux_array
        puts "the player 1 is the winner"
        repeat_game
      end
      if @@winy == aux_array
        puts "the player 2 is the winner"
        repeat_game
      end
    end 
    for i in 0..@@board_size-1
      for j in 0..@@board_size-1
        aux_array[j] = board[j][i] 
      end 
      if @@winx == aux_array
        puts "the player 1 is the winner"
        repeat_game
      end
      if @@winy == aux_array
        puts "the player 2 is the winner"
        repeat_game
      end
    end 
    for i in 0..@@board_size-1
      for j in 0..@@board_size-1
        if(i == j)
         aux_array[j] = board[j][i] 
        end 
      end 
    end 
    if @@winx == aux_array
      puts "the player 1 is the winner"
      repeat_game
    end
    if @@winy == aux_array
      puts "the player 2 is the winner"
      repeat_game
    end 
    for i in 0..@@board_size-1
      for j in 0..@@board_size-1
        if(i + j == @@board_size-1)
         aux_array[j] = board[j][i] 
        end 
      end 
    end 
    if @@winx == aux_array
      puts "the player 1 is the winner"
      repeat_game
    end
    if @@winy == aux_array
      puts "the player 2 is the winner "
      repeat_game
    end
  end
end
