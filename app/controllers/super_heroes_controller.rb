class SuperHeroesController < ApplicationController

  def index
    @super_heroe = SuperHeroe.new
    @super_heroes = SuperHeroe.all
  end

  def create
    SuperHeroe.create(permitted_params)
    redirect_to super_heroes_path
  end

  def destroy
    sh = SuperHeroe.find(params[:id])
    sh.destroy
    redirect_to super_heroes_path
  end


  private

  def permitted_params
    params.require(:super_heroe).permit(:name, :superpower)
  end
end
