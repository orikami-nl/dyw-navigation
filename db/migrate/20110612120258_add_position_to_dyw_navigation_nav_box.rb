class AddPositionToDywNavigationNavBox < ActiveRecord::Migration
  def up
		add_column :dyw_navigation_nav_boxes, :position, :integer
  end
	def down
		remove_column :dyw_navigation_nav_boxes, :position
	end
end
