
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iruby_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "iruby_gem"
  spec.version       = IrubyGem::VERSION
  spec.authors       = ["B1nj0y"]
  spec.email         = ["idegorepl@gmail.com"]

  spec.summary       = %q{Install gems in an IRuby notebook.}
  spec.description   = %q{iruby_gem is used to install gems in an IRuby notebook.}
  spec.homepage      = "https://github.com/gingerhot/iruby_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
end
