class SessionsController < ApplicationController

  def new
  end

  def create
    return redirect_to login_path if !params[:name] || params[:name].empty?
    session[:name] ||= params[:name]
    redirect_to secret_path
  end

  def destroy
    session.delete :name
  end
end
