

module MessageMediaWebhooks
  #  message_media_webhooks client class.
  class MessageMediaWebhooksClient
    # Singleton access to webhooks controller.
    # @return [WebhooksController] Returns the controller instance.
    def webhooks
      WebhooksController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name if
        basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if
        basic_auth_password
    end
  end
end
