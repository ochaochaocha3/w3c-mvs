require "./lib/w3c-mvs"

unless ARGV.size == 1
    puts "Usage: ruby check.rb URL"
    abort
end

puts "URL: #{ARGV[0]}"

validity = W3CMVS::valid? ARGV[0]
if validity != nil
    puts (validity) ? "Valid" : "Invalid"
else
    puts "Cannot determined."
end

sleep 1
