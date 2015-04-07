# Generated by cucumber-sinatra. (2015-04-07 11:10:05 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', './server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BookmarkManager

class BookmarkManagerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BookmarkManagerWorld.new
end
