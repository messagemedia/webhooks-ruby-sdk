
require 'json'
require 'test/unit'
require 'message_media_webhooks/configuration.rb'
require 'message_media_webhooks.rb'
require_relative '../test_helper.rb'
require_relative '../http_response_catcher.rb'

class ControllerTestBase < Test::Unit::TestCase
  include MessageMediaWebhooks

  class << self
    attr_accessor :controller
  end

  # Called only once for a test class before any test has executed.
  def self.startup
    @@api_client = MessageMediaWebhooksClient.new
    @@request_timeout = 30
    @@assert_precision = 0.01

    Configuration.basic_auth_user_name = ENV['MessageMediaApiTestsKey']
    Configuration.basic_auth_password = ENV['MessageMediaApiTestsSecret']
  end

  # Called once before every test case.
  def setup
    @response_catcher = HttpResponseCatcher.new
    self.class.controller.http_call_back = @response_catcher
  end
end
