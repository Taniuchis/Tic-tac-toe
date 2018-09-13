

#tictactoe


def coordinates_empty()
  value = true
  x = @coorx.to_i
  y = @coory.to_i
  if @board[x][y]  != " "
    puts "this place is occupied"
    value = false
  end 
 value 
end

def coordinates_valid()
  value = true
  x = @coorx.to_i
  y = @coory.to_i
   begin  
     @board[x][y]
     rescue  
      puts 'Error in the coordinates write others'  
      value = false 
   end  
   if (value == true)
    value = coordinates_empty()
   end 
  value
end


def player

  plays = @board_size * @board_size
  for i in 1..plays
    if i % 2 == 0 
      loop do 
        puts "player 2"
        puts "Please you need to write the coordinates"
        puts "X : "
        @coorx = gets.chomp #var that save the coordinate that user choice
        puts "Y : "
        @coory = gets.chomp
        value =  coordinates_valid()
        break if value == true 
      end
      player = "O"
      turn(player)
      check_win
    else
      loop do 
        puts "player 1"
        puts "Please you need to write the coordinates"
        puts "X : "
        @coorx = gets.chomp #var that save the coordinate that user choice
        puts "Y : "
        @coory = gets.chomp
        value =  coordinates_valid()
        break if value == true 
      end  
      player = "X"
      turn(player)
      check_win
    end  
  end

end

def turn (player)
  x = @coorx.to_i
  y = @coory.to_i
   @board[x][y] = player
   print_board
end



def  empty_board
  @board = []
  # llenar tablero
  @board_size.times do
    column = []
    @board_size.times do
      column.push ' '
    end
    @board.push column
end
 

end

def print_board
  for i in 0..@board_size-1
    coord = i
    coord = coord.to_s
    print "  " + coord
  end
  puts
  i = 0 
  # imprimir matriz
  @board.each do |column|
    coord = i.to_s
    print coord + " "
    i= i+1
    column.each do |card|
      #card.sub!(" ", "X")
      print card
      print '  ' # print no imprime un salto de linea al final del output
    end
    puts
    #puts "  --|--|--"
  end
end

def start
  puts "Tic Tac Toe game"
  puts "Choice the size of the board"
  @board_size = gets.chomp.to_i
  empty_board
  #check_win
  print_board
  player
  
end

def check_win
  #prueba
  #@board[0][0] = "X"
  #@board[0][1] = "X"
  #@board[0][2] = "X"

  winx = Array.new 
  winy = Array.new 
  for i in 0..@board_size-1
    winx[i] = "X"
    winy[i] = "O"
  end 

  aux_array = Array.new
  for i in 0..@board_size-1
    for j in 0..@board_size-1
      aux_array[j] = @board[i][j] 
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

  for i in 0..@board_size-1
    for j in 0..@board_size-1
      aux_array[j] = @board[j][i] 
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

  for i in 0..@board_size-1
    for j in 0..@board_size-1
      if(i == j)
       aux_array[j] = @board[j][i] 
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

start