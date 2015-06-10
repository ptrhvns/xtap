# Xtap

This Rubygem adds the #xtap method to Object. The #xtap method yields self to
the provided block, and then returns the value returned by calling the block.

## Installation

Add this line to your application's Gemfile:

    gem 'xtap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xtap

## Usage

Here's an example:

    def xform(object)
      'qux'
    end

    'foo'
      .xtap { |s| xform(s) }
      .gsub(/qux/, 'baz')

## Contributing

1. Fork it ( https://github.com/[my-github-username]/xtap/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
