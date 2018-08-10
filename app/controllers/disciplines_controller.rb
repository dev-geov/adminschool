class DisciplinesController < ApplicationController

  def index
    @title = 'Disciplinas'
    if params[:course]
      @course = Course.find_by(title: params[:course])
      @disciplines = Discipline.where(course: @course)
    elsif params[:professor]
      @professor = Professor.find_by(name: params[:professor])
      @disciplines = Discipline.where(professor: @professor)
    else
      @disciplines = Discipline.all
    end
  end

  def show
    @discipline = Discipline.find(params[:id])
    @title = @discipline.title
  end

  def new
    @course = Course.find_by(title: params[:course])
    @discipline = Discipline.new
    @title = 'Nova disciplina'
  end

  def create
    @discipline = Discipline.create(discipline_params)
    if @discipline.save
      redirect_to disciplines_path
    else
      render 'new'
    end
  end

  def edit
    @discipline = Discipline.find(params[:id])
    @title = @discipline.title
  end

  def update
    @discipline = Discipline.find(params[:id])
    if @discipline.update_attributes(discipline_params)
      redirect_to discipline_path
    else
      render 'edit'
    end
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy
    redirect_to disciplines_path
  end


  private
  def discipline_params
    params.require(:discipline).permit(:title, :description, :hours, :course_id, :professor_id)
  end
end
