$:.unshift File.expand_path("../lib", __FILE__)

require 'version'

spec = Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "hundraartonhundra"
  s.version     = Hundraartonhundra::VERSION
  s.author      = "Johan Eckerstroem"
  s.email       = "johan@duh.se"
  s.summary     = "Client library for talking to 118100 API."
  s.description = "Ruby library for talking to 118100 API. 118100 is a Swedish telephone directory service."
  s.homepage    = "https://github.com/jage/hundraartonhundra"

  s.requirements << 'API account at 118100.se'

  s.license = 'MIT'

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.MD"]

  # Dependencies
  s.add_dependency("nokogiri", "~> 1.0")

  s.require_path = 'lib'
  s.files = %w(README.md) + Dir["{lib,spec}/**/*"]
end
