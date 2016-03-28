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

  def turn(new_direction)
    when new_direction == "R"
        if @direction == "N"
          @direction = "E"
        elsif @direction == "S"
          @direction == "W"
        elsif @direction == "E"
          @direction = "S"
        elsif @direction == "W"
          @direction - "N"
        end
    end
    when new_direction == "L"
      if @direction == "N"
        @direction = "E"
      if @direction == "S"
        @direction = "W"
      if @direction == "E"
        @direction = "N"
      if @direction == "W"
        @direction = "S"
      end
    end

  end



  def current_position
    puts "The Rover's position is at (#{@x}, #{@y}) and facing #{@direction}."
  end

end
