module DywNavigation
  class NavBox < ActiveRecord::Base
		attr_accessible :image, :title, :link
		validates_presence_of :title, :link
		validates_uniqueness_of :title, :link
		mount_uploader :image, ImageUploader
  end
end
