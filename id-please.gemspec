# -*- encoding: utf-8 -*-
require File.expand_path('../lib/id-please/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'id-please'
  gem.version     = IdPlease::VERSION
  gem.date        = '2017-12-14'
  gem.summary     = "Provides a helper to check if a national id or a passport value is valid."
  gem.description = "A gem for id and passport validation."
  gem.authors     = ["crowtec"]
  gem.email       = 'info@crowtec.eu'
  gem.require_paths = ['lib']
  gem.files       = Dir['lib/**/*'] + %w(README.md)
  gem.homepage    = 'https://github.com/crowtec/id-please'
  gem.license       = 'MIT'
end
