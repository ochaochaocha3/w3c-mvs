require "./lib/w3c-mvs"
require "kconv"

pages = []
File.open("./url-list.txt") do |f|
    lines = f.read.toutf8.split("\n")
    lines.each do |l|
        unless /^#/ =~ l
            param = l.chomp.split "\t"
            pages << {title: param[0], url: param[1]} if param.size == 2
        end
    end
end

exists_valid_page = false
invalid_pages = []
nd_pages = []
pages.each do |p|
    puts "Checking #{p[:title]}"

    validity = W3CMVS::valid? p[:url]
    if (validity != nil)
        if validity
            exists_valid_page = true
        else
            invalid_pages << p[:title] unless validity
        end
    else
        nd_pages << p[:title]
    end

    sleep 1
end

puts "-" * 80
puts "[Results]"
br = false

if exists_valid_page && invalid_pages.empty? && nd_pages.empty?
    puts "All pages are valid."
    br = true
end

unless invalid_pages.empty?
    print "\n" if br
    puts "Invalid:", invalid_pages
    br = true
end

unless nd_pages.empty?
    print "\n" if br
    puts "Cannot determined:", nd_pages
end
