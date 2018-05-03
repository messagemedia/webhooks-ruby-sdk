# This file was automatically generated for MessageMedia by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class APIControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.client
  end

  # This will delete the webhook wuth the give id.
  #a **Response 404 is returned when** :
  #    <ul>
  #     <li>there is no webhook  with this `webhookId` </li>
  #    </ul>
  def test_delete_delete_and_update_webhook_1()
    # Parameters for the API call
    webhook_id = 'a7f11bb0-f299-4861-a5ca-9b29d04bc5ad'

    # Perform the API call through the SDK function
    self.class.controller.delete_delete_and_update_webhook(webhook_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 204)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # This will retrieve all webhooks for the account we're connected with.
  #a **Response 400 is returned when** :
  #    <ul>
  #     <li>the `page` query parameter is not valid </li>
  #     <li>the `pageSize` query parameter is not valid </li>
  #    </ul>
  def test_retrieve_1()
    # Parameters for the API call
    page = '1'
    page_size = '10'

    # Perform the API call through the SDK function
    result = self.class.controller.retrieve(page, page_size)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse(
      '{"page":0,"pageSize":100,"pageData":[{"id":"6e2c61df-d30a-4555-82a5-0e79822'\
      'd8f53","url":"http://myurl.com","method":"POST","encoding":"FORM_ENCODED","'\
      'headers":{"Account":"FunGuys"},"template":"id=$mtId&status=$statusCode","ev'\
      'ents":["ENROUTE_DR","DELIVERED_DR"]},{"id":"6e2c61df-d30a-4555-82a5-0e79822'\
      'd8f53","url":"http://myurl.com","method":"POST","encoding":"XML","headers":'\
      '{"Account":"FunGuys"},"template":"<content><id> $mtId < /id> <status > $sta'\
      'tusCode < /status> </content>","events":["ENROUTE_DR","DELIVERED_DR"]}]}'
      )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
