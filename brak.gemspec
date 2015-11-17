# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brak/version'

Gem::Specification.new do |spec|
  spec.name          = "brak"
  spec.version       = Brak::VERSION
  spec.authors       = ["Bryan Thompson"]
  spec.email         = ["bryan@madebymarket.com"]

  spec.summary       = %q{A cgi-bin based application framework for grownups}
  spec.description   = %q{A cgi-bin based application framework for grownups (WIP)}
  spec.homepage      = "https://github.com/bryanthompson/brak"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
