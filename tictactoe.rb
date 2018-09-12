
#tictactoe

def  empty_board
   @x1 = " "
   @x2 = " "
   @x3 = " "
   @y1 = " "
   @y2 = " "
   @y3 = " "
   @z1 = " "
   @z2 = " "
   @z3 = " "
end

def print_board
  puts
  puts "   1   2   3"
  puts "X  #{@x1} | #{@x2} | #{@x3} " 
  puts "  ---|---|---"
  puts "Y  #{@y1} | #{@y2} | #{@y3} "
  puts "  ---|---|---"
  puts "Z  #{@z1} | #{@z2} | #{@z3} "
  puts
  
end
def turn
  puts "Please you need to write the coordinates"
  coor = gets.chomp #var that save the coordinate that user choice
  puts coor

  coor_hash = {"x1" => @x1,
               "x2" => @x2,
               "x3" => @x3,
               "y1" => @y1,
               "y2" => @y2,
               "y3" => @y3,
               "z1" => @z1,
               "z2" => @z2,
               "z3" => @z3}

    coor_hash.each do |choice, square|
      if choice == coor
          square.sub!(" ", "X")
      end

    end
 print_board
     puts coor_hash["x1"]
end

def start
  puts "Tic Tac Toe game"
  empty_board
  print_board
  turn
end

start