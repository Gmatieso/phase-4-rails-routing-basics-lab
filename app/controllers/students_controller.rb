# The standard naming convention for controllers 
# is the name of the controller followed by the 
# word Controller.

class StudentsController < ApplicationController
    # In the index action, return JSON data representing a list of all students
    def index
        students = Student.all
        render json: students
    end

    # In the grades action, return JSON data representing a list of all students,
    # ordered by grade from highest to lowest
    def grades
        students = Student.all.order(grade: :desc)
        render json: students
        
    end

    # return JSON data representing the one student 
    # with the highest grade from highest to lowest 
    def highest_grade 
        students = Student.all.order(grade: :desc).limit(1)
        render json: students
    end

end
