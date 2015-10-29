class Rover
	

	attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction
		input = gets.chomp
		input.each_char do |char|
			if char == "L" then turn_left 
			elsif char == "R" then turn_right
			elsif char == "M" then move
			end
		end
	end

	def turn_left
		if self.direction == "N" then self.direction = "W"
		elsif self.direction == "W" then self.direction = "S"
		elsif self.direction == "S" then self.direction = "E"
		elsif self.direction == "E" then self.direction = "N"
		end
	end

	def turn_right	
		if self.direction == "N" then self.direction = "E"
		elsif self.direction == "E" then self.direction = "S"
		elsif self.direction == "S" then self.direction = "W"
		elsif self.direction == "W" then self.direction = "N"
		end
	end

	def move
		if self.direction == "N" then self.y += 1
		elsif self.direction == "W" then self.x -= 1
		elsif self.direction == "S" then self.y -= 1
		elsif self.direction == "E" then self.x += 1
		end
	end

	def coord
		puts "#{x}, #{y}, #{direction}"
	end
end

