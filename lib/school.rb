# code here!
require "pry"
class School
  attr_accessor :school, :roster
  
  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else 
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    i = 0 
    @roster.collect do |g, students|
      students.sort!
    end
    @roster.sort.to_h 
  end
end 
