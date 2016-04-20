# spring-commands-rspec

This gem implements the `rspec` command for
[Spring](https://github.com/jonleighton/spring).

## Fork with hack for RubyMine

This fork hacks in OSX RubyMine extension paths to load path so it doesn't
fail to require dependencies if Spring server was started outside of RubyMine.

Usage in Gemfile:

``` ruby
gem 'spring-commands-rspec', git: 'https://github.com/thewoolleyman/spring-commands-rspec.git'
```


## Usage

Add to your Gemfile:

``` ruby
gem 'spring-commands-rspec', group: :development
```

If you're using spring binstubs, run `bundle exec spring binstub rspec` to generate `bin/rspec`.
Then run `spring stop` to pick up the changes.
