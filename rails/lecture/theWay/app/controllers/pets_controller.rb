class PetsController < ApplicationController
  def index
    flash[:error] = 'This is my error'
    session[:id] = 8
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
  end

  def create
    Pet.create(pet_params)
    redirect_to '/pets'
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    @pet.save
    redirect_to pet_url(id: params[:id])
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to '/pets'
  end

  private
  def pet_params
    params.require(:pet).permit(:name,:color)
  end

end
