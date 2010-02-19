require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'openssl'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'hmac'

class Test::Unit::TestCase
end
