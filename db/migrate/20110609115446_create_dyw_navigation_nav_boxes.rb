class CreateDywNavigationNavBoxes < ActiveRecord::Migration
  def change
    create_table :dyw_navigation_nav_boxes do |t|
      t.string :title
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
