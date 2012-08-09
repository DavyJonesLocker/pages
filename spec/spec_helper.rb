# Configure Rails Envinronment
ENV['RAILS_ENV'] = 'test'
require File.expand_path('../dummy/config/environment.rb',  __FILE__)

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/email/rspec'
require 'valid_attribute'
require 'factory_girl_rails'
if RUBY_VERSION > '1.9' && RUBY_ENGINE == 'ruby'
  require 'debugger'
end
require 'bourne'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, 'spec/support/**/*.rb')].each { |f| require f }
Dir[File.join(ENGINE_RAILS_ROOT, 'spec/config/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :mocha
  config.use_transactional_fixtures = true
  config.include Factory::Syntax::Methods

  config.before(:each, :type => :request) do
    Dir[File.join(ENGINE_RAILS_ROOT, 'spec/requests/step_helpers/**/*.rb')].each { |f| require f }
  end
end

