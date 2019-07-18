class EncountersController < ApplicationController
  def index
    @encounters = Encounter.limit(10).all.sort_by { |e| e[:patient_age]}
  end
end
