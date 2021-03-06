# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calculate_tip/version'

Gem::Specification.new do |spec|
  spec.name          = "calculate_tip"
  spec.version       = CalculateTip::VERSION
  spec.authors       = ["jvssvarma"]
  spec.email         = ["jampana.varma49@gmail.com"]

  spec.summary       = %q{A gem for generating tip values.}
  spec.homepage      = "https://github.com/jvssvarma/calculate_tip"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
