class Subdomain


    #
    # For routes file to check if a subdomain has been matched
    def self.matches?(request)
        request.subdomain.present? && request.subdomain != "www" && request.subdomain != 'perfect-dev'
    end


end

