
class Tictactoe
  attr_accessor :board
  attr_accessor :coorx
  attr_accessor :coory
  attr_accessor :board_size
  def initialize
    self.board = []
    self.coorx = 0
    self.coory = 0
    self.board_size = 0
  end
  
  

  def player
    puts board_size
    plays = board_size * board_size
    plays.times do |i|
      i += 1
      if i % 2 == 0 
        loop do 
          puts "player 2"
          puts "Please you need to write the coordinates"
          puts "X : "
          @coorx = gets.chomp #var that save the coordinate that user choice
          puts "Y : "
          @coory = gets.chomp
          value =  Valid.new.coordinates_valid(coorx, coory, board)
          break if value == true 
        end
        player = "O"
        turn(player)
        player2 = Win.new
        player2.check_win(board, board_size)
      else
        loop do 
          puts "player 1"
          puts "Please you need to write the coordinates"
          puts "X : "
          @coorx = gets.chomp #var that save the coordinate that user choice
          puts "Y : "
          @coory = gets.chomp
          value = Valid.new.coordinates_valid(coorx,coory, board)
          break if value == true 
        end  
        player = "X"
        turn(player)
        player1 = Win.new
        player1.check_win(board,board_size)
       end  
    end
    if i == plays  
      puts "Game Over"
    end 
  end

  def turn (player)
    x = coorx.to_i
    y = coory.to_i
     board[x][y] = player
     system 'clear' 
     print_board
  end

  def  empty_board
  
    # llenar tablero
    board_size.times do
      column = []
      board_size.times do
        column.push(' ')
      end
      board.push(column)
    end
  end

  def print_board
    for i in 0..board_size-1
      coord = i
      coord = coord.to_s
      print "  " + coord
    end
    puts
    i = 0 
    # imprimir matriz
    board.each do |column|
      coord = i.to_s
      print coord + " "
      i= i+1
      column.each do |card|
        #card.sub!(" ", "X")
        print card
        print '  ' # print no imprime un salto de linea al final del output
      end
      puts
    end
  end
  
  def repeat_game
    puts "Do you want play again? Y/N"
    answ = gets.chomp.upcase
    if answ == "Y"
      start
    else
      puts "Game Over"
      exit
    end
  end

  def start
    system 'clear' 
    puts "Tic Tac Toe game"
    loop do 
      puts "Choice the size of the board"
      @board_size = gets.chomp.to_i
      Valid.new.size_valid(board_size)
      break if board_size > 0
    end 
    empty_board
    #check_win
    print_board
    player
  end

end 




