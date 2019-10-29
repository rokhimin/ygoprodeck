lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ygoprodeck/version'

Gem::Specification.new do |spec|
  spec.name          = "ygoprodeck"
  spec.version       = Ygoprodeck::VERSION
  spec.authors       = ["Rokhimin Wahid"]
  spec.email         = ["rokhim.whd@gmail.com"]
  spec.summary       = "ygoprodeck API wrapper for search yugioh's card"
  spec.description   = "ygoprodeck API wrapper for search yugioh card"
  spec.homepage      = "http://github.com/rokhimin/ygoprodeck"
  spec.license       = "MIT"
 
  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ["lib"]
	
  spec.required_ruby_version = '>= 2.0.0'
	
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rspec-prof', '~> 0.0.7'
  spec.add_development_dependency 'rubocop', '~> 0.68.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
end
