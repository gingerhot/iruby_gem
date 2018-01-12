# IrubyGem

`iruby_gem` is a pack of lines of code used to install gems in a Ruby program, especially in a [IRuby](https://github.com/SciRuby/iruby) notebook.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iruby_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iruby_gem

## Usage

```ruby
require 'iruby_gem'

gem_install("some_gem", "~> 0.2.1")
# Or shortly for a lazy guy
gem_i("some_gem", "~> 0.2.1")
# and you can omit the version restriction if you don't need it
gem_i("some_gem")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gingerhot/iruby_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IrubyGem project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/gingerhot/iruby_gem/blob/master/CODE_OF_CONDUCT.md).
