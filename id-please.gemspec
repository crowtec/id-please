# -*- encoding: utf-8 -*-
require File.expand_path('../lib/id_please/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'id-please'
  s.version     = IdPlease::VERSION
  s.date        = '2017-12-14'
  s.summary     = "Provides a helper to check if a national id or a passport value is valid."
  s.description = "A gem for id and passport validation."
  s.authors     = ["crowtec"]
  s.email       = 'info@crowtec.eu'
  s.files       = ["lib/id_please.rb"]
  s.homepage    = 'https://github.com/crowtec/id-please'
  s.license       = 'MIT'
end
