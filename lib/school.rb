# code here!
require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def grade(grade)
        return @roster[grade]
    end

    def add_student(name, grade)
        #iterate over keys, only first one being added
        if !@roster.has_key?(grade)
            @roster[grade] = [name]
        else @roster.has_key?(grade)
            @roster[grade] << name
        end
    end

    def sort
        @roster.each do | grade, student_array |
            #binding.pry
            #@roster[grade] =students_array.sort
            @roster[grade] = student_array.sort
        end
    end

end