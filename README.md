# Nesta::Plugin::Smartmeta

This plugin generates a meta description and keywords if they're not specified.

* description: from a page or article summary if there is no description
* keywords: from page.categories and page.articles if no keywords are given

> WARNING: This has the potential to be slow. With my benchmarking it wasn't, but I don't have a great number of pages and articles. That said, if you do, you should use something like [httperf](http://www.rubyops.net/httperf) to benchmark your site before going live. If you do see a performance hit, using caching -- Nesta's default or something like my [nesta-plugin-diskcached](http://github.com/jmervine/nesta-plugin-diskcached) should help.

## Installation

Add this line to your application's Gemfile:

    gem 'nesta-plugin-smartmeta'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nesta-plugin-smartmeta

Or from source via bundler:

    $ echo "gem 'nesta-plugin-smartmeta', :git => 'https://github.com/jmervine/nesta-plugin-smartmeta.git'" >> Gemfile
    $ bundle

## Usage

This should work out of the box.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

