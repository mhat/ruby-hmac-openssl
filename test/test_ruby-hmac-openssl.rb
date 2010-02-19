require 'helper'

class TestRubyHmacOpenssl < Test::Unit::TestCase

  should "HMAC-MD5" do 
    # irb(main):006:0* OpenSSL::HMAC.hexdigest('md5', "hello", "nurse")
    # => "a87fe83548f7458811d3394360fc9b42"
    assert HMAC::MD5.hexdigest("hello", "nurse") == "a87fe83548f7458811d3394360fc9b42"
  end
 
  should "HMAC-SHA1" do
    # irb(main):003:0> OpenSSL::HMAC.hexdigest('sha1', "hello", "nurse")
    # => "97ee34f6f9a49602e253090315673bc1228de343"
    assert HMAC::SHA1.hexdigest("hello", "nurse") == "97ee34f6f9a49602e253090315673bc1228de343"
  end

  should "HMAC-SHA256" do
    #irb(main):007:0> OpenSSL::HMAC.hexdigest('sha256', "hello", "nurse")
    #=> "ba71b8a76ecc0a68d12ca36c58b4719f06b1db77e5766b8766a9d1c444400a28"
    assert HMAC::SHA256.hexdigest("hello", "nurse") == "ba71b8a76ecc0a68d12ca36c58b4719f06b1db77e5766b8766a9d1c444400a28"
  end

  should "HMAC-SHA384" do
    #irb(main):008:0> OpenSSL::HMAC.hexdigest('sha384', "hello", "nurse")
    #=> "0e2fc9cfac121fa212174e38c9993f6b8ee07bc8efc9f00f93d964b86a71ae6391bcf42ca152d78f46674a3f7ff7e6cf"
    assert HMAC::SHA384.hexdigest("hello", "nurse") == "0e2fc9cfac121fa212174e38c9993f6b8ee07bc8efc9f00f93d964b86a71ae6391bcf42ca152d78f46674a3f7ff7e6cf"
  end

  should "HMAC-SHA512" do
    # irb(main):008:0> OpenSSL::HMAC.hexdigest('sha384', "hello", "nurse")
    # => "ba592455e8bbf8c596bf488d85adb3537e9d43d0815cd067441dad252e5b682d43861798fce6e75a20ff6869cc46400ef3d263407e408aba223348fc71dce3a1"
    assert HMAC::SHA512.hexdigest("hello", "nurse") == "ba592455e8bbf8c596bf488d85adb3537e9d43d0815cd067441dad252e5b682d43861798fce6e75a20ff6869cc46400ef3d263407e408aba223348fc71dce3a1"
  end

  should "HMAC-RMD160" do
    # irb(main):010:0> OpenSSL::HMAC.hexdigest('RMD160', "hello", "nurse")
    # => "7838be414b8850a18251c60d8d19d5ca962a40fa"
    assert HMAC::RMD160.hexdigest("hello", "nurse") == "7838be414b8850a18251c60d8d19d5ca962a40fa"
  end

end
