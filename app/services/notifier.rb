require "uri"
require "net/http"

class Notifier
  URL = "https://run.mocky.io/v3/fd99c100-f88a-4d70-aaf7-393dbbd5d99f".freeze
  
  def initialize(team)
    @team = team
  end

  def call
    notification_request
  end

  private

    def notification_request
      req = Net::HTTP.post_form(URI.parse(URL), payload)
      raise "ApiRequestFailed" unless req.is_a? Net::HTTPSuccess

      JSON.parse req.body
    end

    def payload
      {
        phone_number: developer&.phone_number,
        message: "Too many 5xx!",
      }
    end

    def developer
      @team.developers.find(Developer.pluck(:id).sample)
    end
end
