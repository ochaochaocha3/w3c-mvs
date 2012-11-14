require "./lib/w3c-mvs"

url = "http://www.li-sa.net/ocha3/"
puts "URL: #{url}"

validity = W3CMVS::valid? url
if validity != nil
    puts "Validity: #{W3CMVS::valid? url}"
else
    puts "Cannot determine the validity."
end
