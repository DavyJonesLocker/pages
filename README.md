# Pages #

[![Build Status](http://travis-ci.org/dockyard/pages.png)](http://travis-ci.org/dockyard/pages)

Simple dynamic yet static pages for a Rails app

## Installation ##

In your Gemfile add the following:

```ruby
gem 'pages'
```

Then you can either create a `app/views/pages` directory

```
mkdir app/views/pages
```

Or run the generator

```
rails g pages:setup
```

## Usage ##

Simply define new pages in your routes

```ruby
Rails.application.routes.draw do
   page :about
end
```

This will expand to:

```ruby
get '/about' => 'pages#about', :as => :about
```

Then just create a new view

```
touch app/views/pages/about.html.erb
```

And create whatever content you want!

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

## Want to help? ##

Stable branches are created based upon each minor version. Please make
pull requests to specific branches rather than master.

Please make sure you include tests!

Unles Rails drops support for Ruby 1.8.7 we will continue to use the
hash-rocket syntax. Please respect this.

Don't use tabs to indent, two spaces are the standard.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
