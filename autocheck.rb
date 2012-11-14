require "./lib/w3c-mvs"
require "kconv"

pages = []
File.open("./url-list.txt") do |f|
    lines = f.readlines
    lines.each do |l|
        unless /^#/ =~ l
            param = l.chomp.split "\t"
            pages << {title: param[0], url: param[1]} if param.size == 2
        end
    end
end

invalid_pages = []
nd_pages = []
pages.each do |p|
    puts "Checking #{p[:title]}"

    validity = W3CMVS::valid? p[:url]
    if (validity != nil)
        invalid_pages << p[:title] unless validity
    else
        nd_pages << p[:title]
    end

    sleep 1
end

puts "-" * 80
puts "[Results]"

if invalid_pages.empty?
    puts "All pages are valid."
else
    puts "Invalid:", invalid_pages
end

unless nd_pages.empty?
    print "\n"
    puts "Cannot determined:", nd_pages
end
