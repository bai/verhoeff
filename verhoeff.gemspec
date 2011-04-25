# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'verhoeff/version'

Gem::Specification.new do |s|
  s.name         = "verhoeff"
  s.version      = Verhoeff::VERSION
  s.authors      = [ "beawesomeinstead", "oklasoft" ]
  s.email        = "graf.otodrakula@gmail.com"
  s.homepage     = "http://github.com/bai/verhoeff"
  s.summary      = "Pure-Ruby implementation of the Verhoeff checksum algorithm"
  s.description  = "Pure-Ruby implementation of the Verhoeff checksum algorithm"

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  s.add_development_dependency 'shoulda'
end
