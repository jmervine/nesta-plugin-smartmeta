# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nesta-plugin-smartmeta/version'

Gem::Specification.new do |gem|
  gem.name          = "nesta-plugin-smartmeta"
  gem.version       = Nesta::Plugin::Smartmeta::VERSION
  gem.authors       = ["Joshua Mervine"]
  gem.email         = ["joshua@mervine.net"]
  gem.description   = %q{ 
    Generate http meta data from existing data, when not specified. 
  }
  gem.summary       = gem.descrition
  gem.homepage      = "http://www.rubyops.net/nesta/nesta-plugin-smartmeta"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end
