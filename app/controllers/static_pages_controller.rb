class StaticPagesController < ApplicationController
    def about
        #Ruby <%= link_to "About", static_pages_about_path %>
        #HTML <a href="/static_pages/about">About</a>
 		#static_pages_about_path #WORKS, removed based on youtube video
    end
    
    def contact
    	@email = "myemail@changehealth.com"
    end
	
	include BetterdoctorHelper
    def npi
    	@npi = params[:npi] #controller
    	#@doctors = JSON.parse(BetterdoctorHelper.get_doctors(@encounter)) #from notes_controller.rb
    	@providerdetails = JSON.parse(BetterdoctorHelper.get_providerdetails(@npi))
    end

end  