require 'benchmark'
require 'openssl'
require 'yaml'

iter = ARGV[0] ? ARGV[0].to_i : 100000
puts "Testing Pure OpenSSL HMAC"
puts "iterating #{iter} times"
puts "-------------------------"

data = YAML.load_file( File.join(File.dirname(__FILE__), 'data.yml') )
data[:small]  = data[:small ] * 2
data[:medium] = data[:medium] * 10 
data[:large]  = data[:large ] * 10

puts "S size = #{data[:small ].size}"
puts "M size = #{data[:medium].size}"
puts "L size = #{data[:large ].size}"

Benchmark.bm do |x|
  x.report("S") { iter.times { |i| OpenSSL::HMAC.digest('sha1', data[:secret], data[:small ]) } }
  x.report("M") { iter.times { |i| OpenSSL::HMAC.digest('sha1', data[:secret], data[:medium]) } }
  x.report("L") { iter.times { |i| OpenSSL::HMAC.digest('sha1', data[:secret], data[:large ]) } }
end

