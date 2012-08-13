require 'rubygems'
begin
  require 'debugger'
rescue LoadError
end
require 'bundler/setup'

ENV['RAILS_ENV'] = 'test'
require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'capybara/rspec'
require 'rspec/rails'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
