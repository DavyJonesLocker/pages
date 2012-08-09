# Configure Rails Envinronment
ENV['RAILS_ENV'] = 'test'
require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'capybara/rspec'

require 'rspec/rails'
if RUBY_VERSION > '1.9' && RUBY_ENGINE == 'ruby'
  require 'debugger'
end

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
