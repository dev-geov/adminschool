class CoursesController < ApplicationController

    def index 
        @courses = Course.all
        @title = 'Cursos'
    end

    def show 
        @course = Course.find(params[:id])
        @title = @course.title
    end

    def new
        @course = Course.new
        @title = 'Novo Curso'
    end

    def create 
        @course = Course.create(course_params)
        if @course.save 
            redirect_to courses_path
        else
            render 'new'
        end
    end

    def edit 
        @course = Course.find(params[:id])
        @title = @course.title
    end

    def update 
        @course = Course.find(params[:id])
        if @course.update_attributes(course_params)
            redirect_to courses_path
        else
            render 'edit'
        end
    end

    private
    def course_params
        params.require(:course).permit(:title, :duration, :active)
    end
end
