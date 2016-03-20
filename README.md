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

## Usage Examples

```ruby
Digest::SHA3.hexdigest 'default 512-bit'
#=> "561ac4ec3e6bc5d3bb8a19e440441d2482d94c3932896c11c62177d1bccd8d25022ba68b8b0344c0a3fac4af5c06a17ae4372b76653c2230bae5240cde92cc55"
```

```ruby
Digest::SHA3.new(224).hexdigest 'example 224-bit'
#=> "89354196ffd570c33c70a37da19b55a9761a3ae178488ee1345b7fae"

Digest::SHA3.hexdigest 'another way', 224
#=> "2e250b541367f0f86bbc6f701fb2bcd8e85c159497805580eae989e1"
```

## C-Extension Alternatives

- [digest-sha3](https://github.com/phusion/digest-sha3-ruby)
- [sha3](https://github.com/johanns/sha3#readme)

## License

Creative Commons

To the extent possible under law, Christian Neukirchen has waived all copyright and related or neighboring rights to the source code of the original Ruby implementation. Performance enhancements added by Clemens Gruber. Refactored, tests added, and cut into a gem by Shannon Skipper. You can copy, modify, distribute and perform this work, even for commercial purposes, all without asking permission:

[https://creativecommons.org/publicdomain/zero/1.0/](https://creativecommons.org/publicdomain/zero/1.0/)
