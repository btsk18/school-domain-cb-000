# code here!
require 'pry'
class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ? roster[grade] << student : roster[grade] = [student]
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    binding.pry
    roster.each { |key, value|
      puts key
      puts value.humanize
      value.sort
    }
  end
end
