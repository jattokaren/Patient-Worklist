class StaticPagesController < ApplicationController
    def about
        #Ruby <%= link_to "About", static_pages_about_path %>
        #HTML <a href="/static_pages/about">About</a>
 		static_pages_about_path
    end
end  