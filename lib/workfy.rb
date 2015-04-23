require 'httparty'
require 'workfy/version'

module Workfy
  class Basement #:nodoc:
    include HTTParty

    base_uri "#{ENV['WORKFY_API_HOST'] || 'workfy-api.herokuapp.com'}/api/v1/jobs"

    def web2pdf content_url, callback_url
      response = self.class.get("/web2pdf.json", {
        query: {
          content_url: content_url,
          callback_url: callback_url
        }
      })

      response
    end
  end

  def self.web2pdf(*args)
    Basement.new.web2pdf(*args)
  end
end
