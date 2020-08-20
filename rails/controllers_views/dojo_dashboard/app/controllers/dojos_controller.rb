class DojosController < ApplicationController
  def index
    @count ||= 0
    @dojos = Dojo.all
    @dojos.each { |dojo| @count += 1}
  end

  def new
  end

  def create
    Dojo.create(dojo_params)
    redirect_to dojos_path
  end

  def show
    @dojo = Dojo.find(params[:id])
    redirect_to dojo_students_path(@dojo)
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    redirect_to dojo_path(@dojo)
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to dojos_path
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end

end
