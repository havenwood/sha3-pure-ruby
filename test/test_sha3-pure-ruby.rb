require File.expand_path '../../lib/sha3-pure-ruby', __FILE__
require 'minitest/autorun'
require 'minitest/pride'

describe Digest::SHA3 do
  it 'should work' do
    empty_string_sha3 = '0eab42de4c3ceb9235fc91acffe746b29c29a8c366b7c60e4e67c466f36a4304c00fa9caf9d87976ba469bcbe06713b435f091ef2769fb160cdab33d3670680e'
    assert_equal Digest::SHA3.new.hexdigest(''), empty_string_sha3
  end
end
    