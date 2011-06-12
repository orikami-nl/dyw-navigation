module DywNavigation
  class Engine < Rails::Engine
    isolate_namespace DywNavigation
		include DywNavigation::Engine.routes.url_helpers
  end
end
