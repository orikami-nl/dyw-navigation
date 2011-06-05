class CreateDywNavigationLinks < ActiveRecord::Migration
  def change
    create_table :dyw_navigation_links do |t|
      t.text :title
      t.text :location

      t.timestamps
    end
  end
end
