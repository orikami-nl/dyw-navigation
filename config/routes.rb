DywNavigation::Engine.routes.draw do
  resources :nav_boxes
	root :to => 'nav_boxes#index'
end
