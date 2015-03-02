class CharactersController < ApplicationController
  def new
  end

  def create
    puts permitted_params
    character = Character.create(permitted_params)
    render json: character
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
    @characters = Character.all

    render json: @characters
  end

  def edit
    @character = Character.find(params[:id])
  end

  private
    def permitted_params
      params.require(:character).permit(:name, :location, :alignment, :role, :occupation, :allegiance, :goals)
    end
end
