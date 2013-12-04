class NotesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_notes

  def index
  end

  def new
    @note = Note.new
  end

  def show
    @note = notes_for_user.find(params[:id])
  end

  def edit
    @note = notes_for_user.find(params[:id])
  end

  #########

  def create
    @note = notes_for_user.new(note_params)

    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def update
    @note = notes_for_user.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end

  def destroy
    @note = notes_for_user.find(params[:id])
    @note.destroy

    redirect_to notes_path
  end

  def notes_for_user
    current_user.notes
  end

  private
  def note_params
    params.require(:note).permit(:title, :content)
  end

  def set_notes
    @notes = notes_for_user.to_a
  end
end
