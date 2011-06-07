# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "dyw-navigation"
  s.summary = "Insert DywNavigation summary."
  s.description = "Insert DywNavigation description."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"
  s.add_dependency 'paperclip', '~> 2.3'
end
