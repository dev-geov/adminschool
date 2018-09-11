class UsersController < ApplicationController

  def index
    @users = User.all
    @title = 'Usuários'
  end

  def new
    @user = User.new
    @title = 'Novo usuário'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuário cadastrado com sucesso!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
