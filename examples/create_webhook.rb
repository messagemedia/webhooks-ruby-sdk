require 'message_media_webhooks'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'API_KEY' # The username to use with basic authentication
basic_auth_password = 'API_SECRET' # The password to use with basic authentication

client = MessageMediaWebhooks::MessageMediaWebhooksClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)

webhooks_controller = client.webhooks

body = MessageMediaWebhooks::CreateWebhookRequest.new("http://webhook2.com",
  "POST",
  "JSON",
  nil,
  ["ENROUTE_DR"],
  "{\"id\":\"$mtId\",\"status\":\"$statusCode\"}"
)

result = webhooks_controller.create_webhook(body)
pp result
