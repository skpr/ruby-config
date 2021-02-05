# Ruby Config

[![CircleCI](https://circleci.com/gh/skpr/ruby-config.svg?style=svg)](https://circleci.com/gh/skpr/ruby-config)

A simple utility for reading skpr config from a directory, and populating
environment variables in Ruby applications.

The default skpr config directory is /etc/skpr

Install with bundler:

## Installation

```
bundle add skpr_config
```

## Usage

```ruby
require "skpr_config"

config = SkprConfig.load
bar = ENV['FOO']
```

Skipper config variables will be converted to uppercase, and dots are
converted to underscores.

## Testing

Run tests using the following:

`rake test`
