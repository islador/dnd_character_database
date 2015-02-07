class CharactersController < ApplicationController
  def new
  end

  def create
    character = Character.create(permitted_params)
    redirect_to character_path(character)
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
    @characters = Character.all
  end

  def edit
    @character = Character.find(params[:id])
  end

  private
    def permitted_params
      params.permit(:name, :location, :alignment, :role, :occupation, :allegiance, :goals)
    end
end
