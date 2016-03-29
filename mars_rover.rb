# Mars Rover Project

class Rover

  def initialize(x, y, direction)
    @y = y
    @x = x
    @direction = direction
  end

  def read_instruction(instruction)
    if instruction == "M"
      r.move
    elsif instruction == "R"
        r.right
    elsif instruction == "L"
        r.left
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

  def turn(R)
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

  def turn(L)
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

puts "Please input your rover's current position (ex. 1, 2, S)"
directions = gets.chomp
