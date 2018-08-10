class ProfessorsController < ApplicationController

    def index
      @professors = Professor.all
      @title = 'Professores'
    end

    def show
      @professor = Professor.find(params[:id])
      @title = @professor.name
    end

    def new
      @professor = Professor.new
      @title = 'Novo Professor'
    end

    def create
      @professor = Professor.create(professor_params)
      if @professor.save
          redirect_to professors_path
      else
          render 'new'
      end
    end

    def edit
      @professor = Professor.find(params[:id])
      @title = @professor.name
    end

    def update
      @professor = Professor.find(params[:id])
      if @professor.update_attributes(professor_params)
          redirect_to professor_path
      else
          render 'edit'
      end
    end

    def destroy
      @professor = Professor.find(params[:id])
      @professor.destroy
      redirect_to professors_path
    end


    private
    def professor_params
        params.require(:professor).permit(:name, :birth, :sex)
    end
end
