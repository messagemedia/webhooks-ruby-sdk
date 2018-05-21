# This file was automatically generated for MessageMedia by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class WebhooksControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.webhooks
  end

  # Delete a webhook that was previously created for the connected account.
  #A webhook can be cancelled by appending the UUID of the webhook to the endpoint and submitting a DELETE request to the /webhooks/messages endpoint.
  #*Note: Only pre-created webhooks can be deleted. If an invalid or non existent webhook ID parameter is specified in the request, then a HTTP 404 Not Found response will be returned.*
  def test_delete_webhook_1()
    # Parameters for the API call
    webhook_id = 'a7f11bb0-f299-4861-a5ca-9b29d04bc5ad'

    # Perform the API call through the SDK function
    self.class.controller.delete_webhook(webhook_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 204)
  end

  # Update a webhook. You can update individual attributes or all of them by submitting a PATCH request to the /webhooks/messages endpoint (the same endpoint used above to delete a webhook)
  #A successful request to the retrieve webhook endpoint will return a response body as follows:
  #```
  #{
  #    "url": "https://webhook.com",
  #    "method": "POST",
  #    "id": "04442623-0961-464e-9cbc-ec50804e0413",
  #    "encoding": "JSON",
  #    "events": [
  #        "RECEIVED_SMS"
  #    ],
  #    "headers": {},
  #    "template": "{\"id\":\"$mtId\", \"status\":\"$statusCode\"}"
  #}
  #```
  #*Note: Only pre-created webhooks can be deleted. If an invalid or non existent webhook ID parameter is specified in the request, then a HTTP 404 Not Found response will be returned.*
  def test_update_webhook_1()
    # Parameters for the API call
    webhook_id = 'a7f11bb0-f299-4861-a5ca-9b29d04bc5ad'
    body = UpdateWebhookRequest.from_hash(JSON.parse(
      '{"url":"https://myurl.com","method":"POST","encoding":"FORM_ENCODED","event'\
      's":["ENROUTE_DR"],"template":"{\\"id\\":\\"$mtId\\", \\"status\\":\\"$statu'\
      'sCode\\"}"}'
      ))

    # Perform the API call through the SDK function
    result = self.class.controller.update_webhook(webhook_id, body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end
