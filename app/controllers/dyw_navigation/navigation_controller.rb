module DywNavigation
  class NavigationController < ApplicationController
	def index
		@navboxes Dyw_navigation::Navbox.all
	end	 
  end
end
