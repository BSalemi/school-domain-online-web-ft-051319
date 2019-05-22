require 'pry'


class School
  class School

    attr_reader :name, :roster, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      if roster[grade] ||= []
         roster[grade] << name
      end
      binding.pry
    end

    def grade(grade)
      roster[grade]
    end

    def sort
      roster.each do |grade, student|
        student.sort!
      end
    end

  end


end
