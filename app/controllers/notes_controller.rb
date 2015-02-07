class NotesController < ApplicationController
  def show
  end

  def edit

  end

  def new
  end

  def create
    character = Character.find(params[:character_id])
    character.notes.create(permitted_params)
    redirect_to character_path(character)
  end

  def index
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to character_path(params[:character_id])
  end

  private
    def permitted_params
      params.permit(:content)
    end
end
