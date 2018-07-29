class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name].blank?
      redirect_to '/login'
    else session[:name] = params[:name]
      redirect_to '/'
    end
  end
  def destroy
    session.delete :name
    redirect_to login_path
  end
end
