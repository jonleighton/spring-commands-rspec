# spring-commands-rspec

This gem implements the `rspec` command for
[Spring](https://github.com/jonleighton/spring).

## Usage

Add to your Gemfile:

``` ruby
gem "spring-commands-rspec"
```

### Factory Girl

If you're using rspec with
[Factory Girl](https://github.com/thoughtbot/factory_girl),
you'll want to include something like this in your
`/config/spring.rb` file in order to avoid
`AssociationTypeMismatch` errors.

``` ruby
Spring.after_fork { FactoryGirl.reload }
```
