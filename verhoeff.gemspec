# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'verhoeff/version'

Gem::Specification.new do |s|
  s.name         = "verhoeff"
  s.license      = "MIT"
  s.version      = Verhoeff::VERSION
  s.authors      = [ "jicksta", "beawesomeinstead", "oklasoft", "hgavin" ]
  s.email        = "graf.otodrakula@gmail.com"
  s.homepage     = "http://github.com/bai/verhoeff"
  s.summary      = "Implementation of the Verhoeff checksum algorithm"
  s.description  = "Pure-Ruby implementation of the Verhoeff checksum algorithm"
  s.licenses     = ["MIT"]

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  s.signing_key   = File.expand_path("~/.gem/private_key.pem") if $0 =~ /gem\z/
  s.cert_chain    = ["certs/bai.pem"]

  s.add_development_dependency 'rake'
end
