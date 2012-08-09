module ActionDispatch::Routing
  class Mapper
    def page(_page)
      get "/#{_page}" => "pages##{_page}", :as => _page
    end

    def pages(*_pages)
      _pages.each do |_page|
        page(_page)
      end
    end
  end
end
