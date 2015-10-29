class Person
	attr_accessor :name, :talk

	def initialize(name)
		@name = name
	end

	def talk
		puts "Hi my name is #{name}"
	end
end


class Student < Person
	def learn
		puts "I get it!"
end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
end
end

#A method can only be called if it is defined in the class that it is being called from. 