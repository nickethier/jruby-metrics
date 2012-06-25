
Gem::Specification.new do |s|
  s.name        = 'jruby-metrics'
  s.version     = '0.0.1'
  s.platform    = 'java'
  s.author      = 'Nick Ethier'
  s.homepage    = 'http://github.com/nickethier/jruby-metrics'
  s.summary     = %q{Ruby wrapper for Yammer's Java Metrics Library}
  s.files       = `git ls-files`.split("\n")
  
  s.require_paths = %w(lib)
end
