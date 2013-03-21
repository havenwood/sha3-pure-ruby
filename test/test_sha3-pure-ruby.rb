require File.expand_path '../../lib/sha3-pure-ruby', __FILE__
require 'minitest/autorun'
require 'minitest/pride'

describe Digest::SHA3 do
  describe 'default 512-bit' do
    it 'should work when empty' do
      empty_string_sha3 = '0eab42de4c3ceb9235fc91acffe746b29c29a8c366b7c60e4e67c466f36a4304c00fa9caf9d87976ba469bcbe06713b435f091ef2769fb160cdab33d3670680e'
      assert_equal Digest::SHA3.new.hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = "b2faf80c85bd36029dc3f804cbf439888fd1ca195ab0e3decb872f8aa9ef767e4866186ebb8b5ecfa1237147a94775f8302648be0fd0ae3a6ebbdf931f423360"
      assert_equal Digest::SHA3.new.hexdigest('cat'), cat_sha3
    end
  end
  
  describe '384-bit' do
    it 'should work when empty' do
      empty_string_sha3 = '2c23146a63a29acf99e73b88f8c24eaa7dc60aa771780ccc006afbfa8fe2479b2dd2b21362337441ac12b515911957ff'
      assert_equal Digest::SHA3.new(384).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = 'fbcae9b945da6967b622e93e5712dcd0b4df2f522a89b0a20b485684c02efcf9efafb699499b2328172cbf654b7721c5'
      assert_equal Digest::SHA3.new(384).hexdigest('cat'), cat_sha3
    end
  end
  
  describe '256-bit' do
    it 'should work when empty' do
      empty_string_sha3 = 'c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470'
      assert_equal Digest::SHA3.new(256).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = '52763589e772702fa7977a28b3cfb6ca534f0208a2b2d55f7558af664eac478a'
      assert_equal Digest::SHA3.new(256).hexdigest('cat'), cat_sha3
    end
  end
  
  describe '224-bit' do
    it 'should work when empty' do
      empty_string_sha3 = 'f71837502ba8e10837bdd8d365adb85591895602fc552b48b7390abd'
      assert_equal Digest::SHA3.new(224).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = "c3e4d225cefd1d01166d801f856907492b3bf8909a8a3a5bc922580f"
      assert_equal Digest::SHA3.new(224).hexdigest('cat'), cat_sha3
    end
  end
end
    