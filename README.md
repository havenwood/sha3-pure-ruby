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
Digest::SHA3.new.hexdigest 'default 512-bit'
#=> "26dce8c3ea8e5ffbfbf684070ca59f9635487942bfc220b9fe94bf9b2f8a7dfa2e4e85059ead3c92f14e5d2e06076eb6643adf50481976bd52f737f89b185ae2"

Digest::SHA3.new(224).hexdigest 'example 224-bit'
#=> "d6e8cef46de550a1b50ca920c4600a6e1512af055034c45a33849133"
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
