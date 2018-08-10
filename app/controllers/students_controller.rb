class StudentsController < ApplicationController

    def index
        @title = 'Estudantes'
        @students = Student.all 
    end

    def show
        @student = Student.find(params[:id])
        @title = @student.fullname
    end

    def new
        @title = 'Novo Estudante'
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        if @student.save 
            redirect_to students_path
        end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update_attributes(student_params)
            redirect_to students_path
        else
            render 'edit'
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end

    private
    def student_params
        params.require(:student).permit(:fullname, :birth, :sex)
    end
    
end
