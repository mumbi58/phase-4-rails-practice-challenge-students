class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students

    end
    def show 
        student = Student.find_by(id: params[:id])
        render json: student
    end
    def create 
        students = Student.create(students_params)
        render json: students
    end
    def update 
        students = Student.find_by(id: params[:id])
        students.update(students_params)
        render json: students
    end
    def destroy 
        students = Student.find_by(id: params[:id])
        students.destroy
       
    end

    private 
    def students_params
        params.permit(:name,:major, :age,:instructor_id)
            
        end

end
