module DywNavigation
  class NavBox < ActiveRecord::Base
		attr_accessible :image, :title, :link, :position
		validates_presence_of :title, :link, :position
		validates_uniqueness_of :title, :link, :position
		mount_uploader :image, ImageUploader

		def previous_box
		  self.class.first(:conditions => ["position < ?", position], :order => "position desc")
		end

		def next_box
		  self.class.first(:conditions => ["position > ?", position], :order => "position asc")
		end
  end
end
