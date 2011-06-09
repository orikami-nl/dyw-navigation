module DywNavigation
  class NavBox < ActiveRecord::Base
		attr_accessible :image
		mount_uploader :image, ImageUploader
  end
end
