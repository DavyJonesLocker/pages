module Pages
  class SetupGenerator < Rails::Generators::Base
    def setup_directory
      empty_directory('app/views/pages')
    end
  end
end
