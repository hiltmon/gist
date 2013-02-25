# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gist/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hilton Lipschitz"]
  gem.email         = ["hiltmon@gmail.com"]
  gem.description   = %q{Manage your gists from the command-line}
  gem.summary       = %q{Gets and updates gists from your github account}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gist"
  gem.require_paths = ["lib"]
  gem.version       = Gist::VERSION
  
  gem.executables   = %w{ gist }
  gem.add_dependency('json')
end
