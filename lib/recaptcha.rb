require "recaptcha/version"
require 'recaptcha/configuration'
require 'recaptcha/client'

module Recaptcha
  class << self
    attr_accessor :configuration
  end

  def self.config
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(config)
  end
end
