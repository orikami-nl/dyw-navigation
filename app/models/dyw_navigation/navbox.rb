module DywNavigation
  class Navbox < ActiveRecord::Base
#	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_many :links
	 
  end
end
