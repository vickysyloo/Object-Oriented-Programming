# Mars Rover Project

class Rover

  def initialize(x, y, direction, width = 10, height = 10)
    @y = y
    @x = x
    @direction = direction
    @width = width
    @height = height
  end

  def read_instruction(instruction)
    if instruction == "M"
      move
    elsif instruction == "R"
        turn_right
    elsif instruction == "L"
        turn_left
    end
  end

  def move
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "E"
      @x += 1
    elsif @directions == "W"
      @x -= 1
    end
  end

  def turn_right
    case new_direction == "R"
      when @direction == "N"
        @direction = "E"
      when @direction == "S"
        @direction == "W"
      when @direction == "E"
        @direction = "S"
      else @direction == "W"
        @direction - "N"
      end
    end
  end

  def turn_left
    case new_direction == "L"
      when @direction == "N"
        @direction = "E"
      when @direction == "S"
        @direction = "W"
      when @direction == "E"
        @direction = "N"
      else @direction == "W"
        @direction = "S"
      end
    end
  end


  def current_position
    puts "The Rover's position is currently at (#{@x}, #{@y}) and facing #{@direction}."
  end

end

puts "Please specify the size of your plateau (ex. 2, 5)"
size = gets.chomp

puts "Please input your rover's current position (ex. 1, 2, S)"
position = gets.chomp

puts "Please enter instructions to direct your rover"
instructions = gets.chomp

puts "Please enter the position of the second rover"
position = gets.chomp

puts "Please enter instructions to direct your second rover"
instructions = gets.chomp
