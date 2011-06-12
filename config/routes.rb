DywNavigation::Engine.routes.draw do
  resources :nav_boxes
	root :to => 'nav_boxes#index'
	put "move_left", :to => "nav_boxes#move_left"
	get "move_left", :to => "nav_boxes#move_left"
	put "move_right", :to => "nav_boxes#move_right"
	get "move_right", :to => "nav_boxes#move_right"
end
