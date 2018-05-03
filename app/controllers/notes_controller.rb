class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
  end

  def new
  	@note = Note.new
  end

  def create
  	p "In the create method!!!"
  	note = Note.create(note_params)
  	p note
  	redirect_to notes_path
  end

  private

  def note_params
  	params.require(:note).permit(:content, :staff_initials)
  end


end
