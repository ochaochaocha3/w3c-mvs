require "net/http"
require "rexml/document"
require "cgi"
require "kconv"

module W3CMVS
    def get_soap_mvs(url)
        contents = nil
        Net::HTTP.start("validator.w3.org", 80) do |http|
            contents = http.get(
                "/check?output=soap12&uri=#{CGI::escape(url)}"
            )
        end
        contents.body
    end

    def valid?(url)
        soap_mvs = get_soap_mvs(url)

        doc = REXML::Document.new soap_mvs
        validity_element = doc.elements["//m:validity"]
        if validity_element
            validity_text = validity_element.text
            validity = !!(validity_text == "true")
        else
            validity = nil
        end

        validity
    end

    module_function :get_soap_mvs, :valid?
end
