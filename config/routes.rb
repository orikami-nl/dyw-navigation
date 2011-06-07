DywNavigation::Engine.routes.draw do
	resources :navigation
	root :to => 'navigation#index'
end
