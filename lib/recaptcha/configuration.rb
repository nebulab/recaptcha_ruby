module Recaptcha
  class Configuration
    attr_accessor :site_key, :secret_key

    def initialize
      @site_key = nil
      @secret_key = nil
    end

  end
end
