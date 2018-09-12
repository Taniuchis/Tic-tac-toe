
#tictactoe
def coordinates
   
end

def player
  plays = @board_size * @board_size
  for i in 1..plays
    if i % 2 == 0 
      puts "player 2"
      puts "Please you need to write the coordinates"
      coor = gets.chomp #var that save the coordinate that user choice
      puts coor
      player = "O"
      #turn(coor, player)
    else
      puts "player 1"
      puts "Please you need to write the coordinates"
      coor = gets.chomp #var that save the coordinate that user choice
      player = "X"
      #turn(coor, player)
    end  
  end

  puts @board[0][0]
  if coordinates == true
    puts "existen las cord"
  else
    puts "no existen"
  end
end

def turn (coor , player)
    coor_hash.each do |choice, square|
      if choice == coor
          square.sub!(" ", player)
      end

    end
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
  print_board
  player
  
end

start