require "pry"
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name,grade)
     @roster[grade]||= [] #if @roster[grade] is doesnt exist, then create it.
     @roster[grade]<<name #when @roster[grade] does exist, push value name to it
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted={}
    roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end

end
