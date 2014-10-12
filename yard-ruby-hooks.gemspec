#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# stub: yard-ruby-hooks ruby lib

=begin
Copyright 2014 Michal Papis <mpapis@gmail.com>

See the file LICENSE for copying permission.
=end

lib = File.expand_path("../lib/", __FILE__)
$:.unshift lib unless $:.include?(lib)

require "yard-ruby-hooks/version"

Gem::Specification.new do |spec|
  spec.name        = "yard-ruby-hooks"
  spec.version     = ::YardRubyHooks::VERSION
  spec.licenses    = ["MIT"]

  spec.authors     = ["Michal Papis"]
  spec.email       = ["mpapis@gmail.com"]

  spec.homepage    = "https://github.com/remote-exec/yard-ruby-hooks"
  spec.summary     = "Documentation helper for define_hook from ruby-hooks"

  spec.files        = Dir.glob("lib/**/*.rb")
  #spec.test_files   = Dir.glob("test/**/*.rb")
end
