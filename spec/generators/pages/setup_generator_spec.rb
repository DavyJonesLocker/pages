require 'spec_helper'
require 'generator_spec/test_case'
require 'generators/pages/setup_generator'

describe Pages::SetupGenerator do
  include GeneratorSpec::TestCase
  destination File.expand_path('../../tmp', __FILE__)

  before(:all) do
    prepare_destination
    run_generator
  end

  it 'creates app/views/pages' do
    Dir.exist?(File.expand_path('app/views/pages', destination_root)).should be_true
  end
end
