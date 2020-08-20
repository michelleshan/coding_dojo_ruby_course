class SurveysController < ApplicationController
  def index
  end

  def create
    session[:results] = params[:survey]
    session[:views] ||= 0
    @views = session[:views] += 1
    flash[:message] = "Thanks for submitting this form! You have submitted this form #{@views} time(s) now."
    redirect_to '/result'
  end

  def show
    @results = session[:results]
  end
end
