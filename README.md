# spring-commands-rspec

This gem implements the `rspec` command for
[Spring](https://github.com/jonleighton/spring).

## Install

Add this code to your rails app `RAILS_APP/config/spring.rb`

Or in your home directory `~/.spring.rb`

See this for information https://github.com/rails/spring#configuration

```ruby
require 'spring-commands-rspec'

%w[
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
].each { |path| Spring.watch(path) }
```

## Usage

Add to your Gemfile:

``` ruby
gem 'spring-commands-rspec', group: :development
```

If you're using spring binstubs, run `bundle exec spring binstub rspec` to generate `bin/rspec`.
Then run `spring stop` to pick up the changes.
