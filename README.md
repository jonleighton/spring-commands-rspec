# spring-commands-rspec

This gem implements the `rspec` command for
[Spring](https://github.com/jonleighton/spring).

## Usage

Add to your Gemfile:

``` ruby
gem "spring-commands-rspec", group: :development
```

If you're using spring binstubs, run `bundle exec spring binstub rspec` to generate `bin/rspec`.
Then run `spring stop` to pick up the changes.
