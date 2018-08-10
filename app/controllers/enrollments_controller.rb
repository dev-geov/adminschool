class EnrollmentsController < ApplicationController

  def index
    @enrollments = Enrollment.all
    @title = 'Inscrições'
  end

  def new
    @student = Student.find_by(fullname: params[:student])
    @enrollment = Enrollment.new
    @title = 'Nova inscrição'
  end

  def create
    @enrollment = Enrollment.create(enrollment_params)
    if @enrollment.save
      redirect_to enrollments_path
    end
  end

  private
  def enrollment_params
    params.require(:enrollment).permit(:course_id, :student_id)
  end
end
