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

body_value = "{
  \"url\": \"https://myurl.com\",
  \"method\": \"POST\",
  \"encoding\": \"FORM_ENCODED\",
  \"events\": [\"ENROUTE_DR\"],
  \"template\": \"{\\\"id\\\":\\\"$mtId\\\", \\\"status\\\":\\\"$statusCode\\\"}\"
}";

body = JSON.parse(body_value);

result = webhooks_controller.update_webhook(webhook_id, body)
pp result
