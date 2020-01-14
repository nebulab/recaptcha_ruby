require "typhoeus"
require 'recaptcha/configuration'

module Recaptcha
  class Client

    VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify".freeze

    def verify_token(token)
      request = Typhoeus::Request.new(
        VERIFY_URL,
        method: :post,
        params: {response: token, secret: Recaptcha.config.secret_key}
      )

      request.run
    end

  end
end
