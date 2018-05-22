
require_relative 'controller_test_base'

class WebhooksControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.webhooks
  end

  def test_create_webhook_1()
    body = CreateWebhookRequest.new("http://webhook1.com","POST","JSON",nil,["ENROUTE_DR"],"{\"id\":\"$mtId\",\"status\":\"$statusCode\"}")

    # Perform the API call through the SDK function
    result = self.class.controller.create_webhook(body)

    assert_equal(@response_catcher.response.status_code, 201)
  end


  # Delete a webhook that was previously created for the connected account.
  #A webhook can be cancelled by appending the UUID of the webhook to the endpoint and submitting a DELETE request to the /webhooks/messages endpoint.
  #*Note: Only pre-created webhooks can be deleted. If an invalid or non existent webhook ID parameter is specified in the request, then a HTTP 404 Not Found response will be returned.*
  def test_delete_webhook_1()
    # Retrieve the id of the last webhook created
    result = self.class.controller.retrieve_webhook
    webhook_id = result['pageData'][0]['id']

    # Perform the API call through the SDK function
    self.class.controller.delete_webhook(webhook_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 204)
  end

end
