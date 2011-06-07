module DywNavigation
  class NavigationController < DywNavigation::ApplicationController
	# GET /navigation
	def index
		render :layout => 'dyw_navigation/application'
		@navboxes = Navbox.all
	end	
	def new
		render :layout => 'dyw_navigation/application'
		@navbox = Navbox.new
	end
  end
end
