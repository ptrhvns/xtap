# NOTICE

This gem is made obsolete as of Ruby 2.5 by the `Object#yield_self` method.

# Xtap

This [RubyGem](https://rubygems.org/) adds the Object#xtap method. It's similar
to Object#tap in that it yields self to the provided block. However,
Object#xtap returns the value returned by calling the block rather than
returning the object passed into the block. This helps facilitate chaining
method calls in some circumstances.

## Installation

Add this line to your application's Gemfile:

    gem 'xtap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xtap

## Usage

Here's an example:

    require 'xtap'

    def transform(object)
      'qux'
    end

    'foo'
      .xtap { |s| transform(s) }
      .gsub(/qux/, 'baz')

## Contributing

1. Fork it ( https://github.com/[my-github-username]/xtap/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
