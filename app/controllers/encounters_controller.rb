class EncountersController < ApplicationController
  def index
    @encounters = Encounter.limit(10).all.sort_by { |e| e[:patient_age]}
    #Reverse Sort
    #@encounters = Encounter.all.sort_by { |e| e[:patient_age]*-1}
    #@encounters = Encounter.all.sort_by { |e| e[:patient_age]}.reverse
  end
end
