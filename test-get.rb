require "cgi"
require "net/http"
require "kconv"

def get_soap_mvs(url)
    contents = nil
    Net::HTTP.start("validator.w3.org", 80) do |http|
        contents = http.get(
            "/check?output=soap12&uri=#{CGI::escape(url)}"
        )
    end
    contents.body
end

url = "http://www.li-sa.jp/ocha3/hiki2mw/"
puts get_soap_mvs(url).toutf8
