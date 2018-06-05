class NotesController < ApplicationController
  # include NotesHelper module here
  def index
  	@encounter_id = params[:encounter_id]
    @notes = Note.where("encounter_id = ?", params[:encounter_id])
  end

  def show
  	@encounter_id = params[:encounter_id]
  	@note_id = params[:id]
  	@note = Note.find(params[:id])
  end

  def new
  	@encounter_id = params[:encounter_id]
  	@note = Note.new
  end

  def create
  	note = Note.new(note_params)
  	note.encounter_id = params[:encounter_id]
  	note.save
  	redirect_to encounter_notes_path(params[:encounter_id])
  end

  private

  def note_params
  	params.require(:note).permit(:content, :staff_initials)
  end


end
