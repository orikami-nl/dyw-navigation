include ApplicationHelper
module DywNavigation
	class ApplicationController < ActionController::Base
		protect_from_forgery
		layout 'test_application'
	end
end
