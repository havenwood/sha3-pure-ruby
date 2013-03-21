# Pure Ruby SHA3 Gem
[![Build Status](https://travis-ci.org/havenwood/sha3-pure-ruby.png?branch=master)](https://travis-ci.org/havenwood/sha3-pure-ruby)

A pure Ruby implementation of SHA3.

## Installation

Install it from the command line:

```bash
gem install sha3-pure-ruby
```

Or execute `bundle` after adding this line to your app's Gemfile:

```ruby
gem 'sha3-pure-ruby'
```

## Usage

```ruby
Digest::SHA3.new.hexdigest ''
#=> "0eab42de4c3ceb9235fc91acffe746b29c29a8c366b7c60e4e67c466f36a4304c00fa9caf9d87976ba469bcbe06713b435f091ef2769fb160cdab33d3670680e"
```

## Compatibility

- Ruby 2.0.0
- Ruby 1.9.3
- Ruby 1.9.2
- JRuby
- Rubinius

## License

Creative Commons

To the extent possible under law, Christian Neukirchen has waived all copyright and related or neighboring rights to the source code of the original Ruby implementation. Performance enhancements added by Clemens Gruber. Refactored, tests added, and cut into a gem by Shannon Skipper. You can copy, modify, distribute and perform this work, even for commercial purposes, all without asking permission:

[https://creativecommons.org/publicdomain/zero/1.0/](https://creativecommons.org/publicdomain/zero/1.0/)
