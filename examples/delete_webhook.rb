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

webhook_id = "WEBHOOK_ID"

webhooks_controller.delete_webhook(webhook_id)
pp result
