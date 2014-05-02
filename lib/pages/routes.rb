module ActionDispatch::Routing
  class Mapper
    def page(_page, options={})
      set_pages_namespace
      _route = options[:transform].call(_page.to_s) if options[:transform]
      _route ||= _page
      get "/#{_route}" => "pages##{_page}", :as => render_as(_page, options)
    end

    def pages(*_pages)
      options = _pages.extract_options!
      _pages.each do |_page|
        page(_page, options)
      end
    end

    private

    def render_as(_page, options)
      if options[:as]
        options[:as][_page]
      else
        _page
      end
    end

    def set_pages_namespace
      if @scope[:module]
        mod = @scope[:module].camelize
        unless eval("defined? ::#{mod}")
          Object.class_eval("module ::#{mod}; end")
        end

        unless eval("defined? ::#{mod}::PagesController")
          Object.class_eval("class ::#{mod}::PagesController < ::PagesController; end")
        end
      end
    end
  end
end
