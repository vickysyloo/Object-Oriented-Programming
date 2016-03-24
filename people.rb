# 1 - Create Student and Intructor Classes

class Person

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
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

Chris = Instructor.new("Chris")

puts Chris.greeting

Christina = Student.new("Christina")

puts Christina.greeting

puts Chris.teach

puts Christina.learn

puts Christina.teach
# This command will not work because the Student class cannot access the method
# in the Instructor class.
