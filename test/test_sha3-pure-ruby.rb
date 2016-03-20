require File.expand_path '../../lib/sha3-pure-ruby', __FILE__
require 'minitest/autorun'
require 'minitest/pride'

# http://emn178.github.io/online-tools/sha3_224.html
# http://emn178.github.io/online-tools/sha3_256.html
# http://emn178.github.io/online-tools/sha3_512.html
# http://emn178.github.io/online-tools/sha3_384.html

describe Digest::SHA3 do
  describe 'default 512-bit' do
    it 'should work when empty' do
      empty_string_sha3 = 'a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26'
      assert_equal Digest::SHA3.new.hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = "fe37dd66fa849ca98684160d542538b22c1edb576271d76b319ded4965d90143a0806fe1edf29b82b8740ec177880769629bdd1a0fb7cb97d7640e60c44833d3"
      assert_equal Digest::SHA3.new.hexdigest('cat'), cat_sha3
    end
  end
  
  describe '384-bit' do
    it 'should work when empty' do
      empty_string_sha3 = '0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004'
      assert_equal Digest::SHA3.new(384).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = '9bb4adf3004b3ed61f76195321621eac835b6502db486a53b64fdb69c50ee1a8dbb05c950577db70be2bafed59f8891d'
      assert_equal Digest::SHA3.new(384).hexdigest('cat'), cat_sha3
    end
  end
  
  describe '256-bit' do
    it 'should work when empty' do
      empty_string_sha3 = 'a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a'
      assert_equal Digest::SHA3.new(256).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = 'd616607d3e4ba96a74f323cffc5f20a3c78e7cab8ecbdbb03b13fa8ffc9bf644'
      assert_equal Digest::SHA3.new(256).hexdigest('cat'), cat_sha3
    end
  end
  
  describe '224-bit' do
    it 'should work when empty' do
      empty_string_sha3 = '6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7'
      assert_equal Digest::SHA3.new(224).hexdigest(''), empty_string_sha3
    end
    
    it 'should work with content' do
      cat_sha3 = "447c857980c93d613b8bd6897c05bfd0621245139f021aaa6b57830a"
      assert_equal Digest::SHA3.new(224).hexdigest('cat'), cat_sha3
    end
  end
end
    
