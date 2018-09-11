class SessionController < ApplicationController
  def new
    if current_user
      redirect_to enrollments_path
    else  
      @title = 'Login'
      @session = Session.new
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) 
      log_in user
      flash[:danger] = 'Seja bem-vindo!'
      redirect_to user
    elsif
      flash[:danger] = 'E-mail ou senha incorretos'
      render 'new'
    end
  end

  def destroy 
    log_out
    redirect_to root_url
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
