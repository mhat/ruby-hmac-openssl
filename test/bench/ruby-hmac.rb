require 'rubygems'
require 'benchmark'
require 'hmac'
require 'hmac-sha1'
require 'yaml'

iter = ARGV[0] ? ARGV[0].to_i : 100000
puts "Testing Ruby HMAC"
puts "iterating #{iter} times"
puts "-----------------------"

data = YAML.load_file( File.join(File.dirname(__FILE__), 'data.yml') )
data[:small]  = data[:small ] * 2
data[:medium] = data[:medium] * 10
data[:large]  = data[:large ] * 10 

puts "S size = #{data[:small ].size}"
puts "M size = #{data[:medium].size}"
puts "L size = #{data[:large ].size}"

Benchmark.bm do |x|
  x.report("S") { iter.times { |i| HMAC::SHA1.digest( data[:secret], data[:small ]) } }
  x.report("M") { iter.times { |i| HMAC::SHA1.digest( data[:secret], data[:medium]) } }
  x.report("L") { iter.times { |i| HMAC::SHA1.digest( data[:secret], data[:large ]) } }
end

