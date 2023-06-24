class InstructorsController < ApplicationController
    def index 
        instructors = Instructor.all
        render json: instructors

    end
    def show 
        instructors = Instructor.find_by(id:params[:id])
        if instructors
        render json: instructors
        else  
            render json: {error: "instructot not found"}
        end
    end
    def create 
        instructor =Instructor.create(instructors_params)
        render json: instructor
    end 
    def update 
            instructor =Instructor.find_by(id:params[:id])
            if instructor
            instructor.update(instructors_params)
            render json: instructor
            else
                render json: { error: "Instructor not found" }
            end
    end 
    def destroy 
        instructors = Instructor.find_by(id:params[:id])
        if instructors
        instructors.destroy
        else
            render json: { error: "Instructor not found" }
        end
        
    end

    private 
    def instructors_params
        params.permit(:name)
    end 
end
