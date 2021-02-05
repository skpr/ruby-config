# Ruby Config

[![CircleCI](https://circleci.com/gh/skpr/ruby-config.svg?style=svg)](https://circleci.com/gh/skpr/ruby-config)

A simple utility for reading skpr config from a directory, and populating
environment variables in Ruby applications.

The default skpr config directory is /etc/skpr

## Usage

```
$config = SkprConfig::create()->load();
$config->get('foo.bar')
```

Skipper config variables will be converted to uppercase, and dots are
converted to underscores. For example:

```
getenv('FOO_BAR')
```

## Testing

Run tests using the following:

`bin/Rubyunit`

## Code Standards

Run code style checks with the following:

`bin/Rubycs`
