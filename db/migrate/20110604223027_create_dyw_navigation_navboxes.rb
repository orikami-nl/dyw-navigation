class CreateDywNavigationNavboxes < ActiveRecord::Migration
  def change
    create_table :dyw_navigation_navboxes do |t|
      t.text :title

      t.timestamps
    end
  end
end
