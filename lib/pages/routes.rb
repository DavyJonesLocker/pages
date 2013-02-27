module ActionDispatch::Routing
  class Mapper
    def page(_page, options={})
      _route = options[:transform].call(_page.to_s) if options[:transform]
      _route ||= _page
      get "/#{_route}" => "pages##{_page}", :as => _page
    end

    def pages(*_pages)
      options = _pages.extract_options!
      _pages.each do |_page|
        page(_page, options)
      end
    end
  end
end
