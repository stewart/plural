# Plural

A gem for pluralizing words.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plural'
```

And then execute:

```shell
$ bundle install
```

Or install it yourself as:

```shell
$ gem install plural
```

## Usage

```ruby
"post".plural
# => "posts"

"octopus".plural
# => "octopi"

"sheep".plural
# => "sheep"

"words".plural
# => "words"

"CamelOctopus".plural
# => "CamelOctopi"
```

## Development

Want to help out?

First, clone the repo and run the test suite:

```shell
git clone git://github.com/stewart/plural.git
cd plural
bundle
rake
```

The test cases are taken direct from ActiveSupport.

Then:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
