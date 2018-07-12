require 'betterdoctor_helper'
require 'json'

class NotesController < ApplicationController
  # include NotesHelper module here
  include BetterdoctorHelper
  def index
  	@encounter_id = params[:encounter_id]
    @encounter = Encounter.find(@encounter_id)
    #@doctors = JSON.parse(BetterdoctorHelper.get_doctors())
    @notes = Note.where("encounter_id = ?", params[:encounter_id])
  end

def about
end

  def show
  	#link_to("Show Note page", encounter_note_path(@encounter_id, note))
  	@encounter_id = params[:encounter_id]
  	@note_id = params[:id]
  	@note = Note.find(params[:id])
  end

  def new
  	@encounter_id = params[:encounter_id]
  	#@encounter_patient_account_number = params[:patient_account_number]
  	@note = Note.new
  end

  def create  #required params NOT WORKING!!?
  	p "In the create method!!!!"
  	note = Note.new(note_params)
  	p note
  	note.encounter_id = params[:encounter_id]
  	p note.encounter_id
  	#NOT WORKING Pass PAN from Enc to Note
  	#note.patient_account_number = params[:patient_account_number]
  	#p note.patient_account_number #nil?? why?
  	note.save
  	redirect_to encounter_notes_path(params[:encounter_id])
  end

  def edit  #WORKING!!!
    @encounter_id = params[:encounter_id] 
    @note_id = params[:id] 
    @note = Note.find(params[:id]) 
  end 

  def update   #WORKING!!
    @encounter_id = params[:encounter_id] 
  #	@note_id = params[:id] 
    @note = Note.find(params[:id]) 
    @note.update_attributes(note_params) 
  	redirect_to encounter_notes_path 
  end 

  def destroy  	#WORKING!!
  	#<td><%= link_to 'Delete Note', encounter_note_path, method: :delete %></td>
  	@encounter_id = params[:encounter_id]
  	#@note_id = params[:id]
  	@note = Note.find(params[:id])
    @note.destroy
    redirect_to encounter_notes_path 
  end

  private

  def note_params
  	params.require(:note).permit(:content, :staff_initials)
  	#params.require(:note).permit(:patient_account_number, :content, :staff_initials)
  end


end
