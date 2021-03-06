class SessionsController < ApplicationController

  def tops

  end

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:danger] = 'ログアウトしました'
    redirect_to root_path
  end
end
