
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pgsync/version"

Gem::Specification.new do |spec|
  spec.name          = "pgsync"
  spec.version       = PgSync::VERSION
  spec.summary       = "Sync Postgres data between databases"
  spec.homepage      = "https://github.com/ankane/pgsync"
  spec.license       = "MIT"

  spec.authors       = "Andrew Kane"
  spec.email         = "andrew@chartkick.com"

  spec.files         = Dir["*.{md,txt}", "{lib,exe}/**/*", "config.yml"]
  spec.require_path  = "lib"

  spec.bindir        = "exe"
  spec.executables   = ["pgsync"]

  spec.required_ruby_version = ">= 2.2"

  spec.add_dependency "multiprocessing"
  spec.add_dependency "parallel"
  spec.add_dependency "pg", ">= 0.18.2"
  spec.add_dependency "slop", ">= 4.2.0"
  spec.add_dependency "faker", ">= 1.9"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
