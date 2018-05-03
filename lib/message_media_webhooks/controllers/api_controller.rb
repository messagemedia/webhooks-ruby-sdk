# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # APIController
  class APIController < BaseController
    @instance = APIController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This will create a webhook for the specified `events`
    # ### Parameters
    # **list of supported parameters in `template` according to the message type
    # :**
    # you must escape the json for the template parameter. see example .
    # | Data   | parameter name | DR| MO | MO MMS | Comment |
    # |:--|--|--|--|--|--|
    # | **service type**  | $type| ``OK`` |`OK`| `OK`| |
    # | **Message ID**  | $mtId, $messageId| `OK` |`OK`| `OK`| |
    # | **Delivery report ID** |$drId, $reportId | `OK` || | |
    # | **Reply ID**| $moId, $replyId| |`OK`| `OK`||
    # | **Account ID**  | $accountId| `OK` |`OK`| `OK`||
    # | **Message Timestamp**  | $submittedTimestamp| `OK` |`OK`| `OK`||
    # | **Provider Timestamp**  | $receivedTimestamp| `OK` |`OK`| `OK`||
    # | **Message status** | $status| `OK` ||||
    # | **Status code**  | $statusCode| `OK` ||||
    # | **External metadata** | $metadata.get('key')| `OK` |`OK`| `OK`||
    # | **Source address**| $sourceAddress| `OK` |`OK`| `OK`||
    # | **Destination address**| $destinationAddress|  |`OK`| `OK`||
    # | **Message content**| $mtContent, $messageContent| `OK` |`OK`| `OK`||
    # | **Reply Content**| $moContent, $replyContent|  |`OK`| `OK`||
    # | **Retry Count**| $retryCount| `OK` |`OK`| `OK`||
    # **list of allowed  `events` :**
    # you can combine all the events whatever the message type.(at least one
    # Event set otherwise the webhook won't be created)
    # + **events for SMS**
    #     + `RECEIVED_SMS`
    #     + `OPT_OUT_SMS`
    # + **events for MMS**
    #     + `RECEIVED_MMS`
    # + **events for DR**
    #     + `ENROUTE_DR`
    #     + `EXPIRED_DR`
    #     + `REJECTED_DR`
    #     + `FAILED_DR`
    #     + `DELIVERED_DR`
    #     + `SUBMITTED_DR`
    # a **Response 400 is returned when** :
    #     <ul>
    #      <li>the `url` is not valid </li>
    #      <li>the `events` is null/empty </li>
    #      <li>the `encoding` is null </li>
    #      <li>the `method` is null </li>
    #      <li>the `headers` has a `ContentType`  attribute </li>
    #     </ul>
    # @param [String] content_type Required parameter: Example:
    # @param [CreateRequest] body Required parameter: Example:
    # @return Mixed response from the API call
    def create(content_type,
               body)
      begin
        @logger.info("create called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/webooks/messages'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create.")
        _headers = {
          'accept' => 'application/json',
          'Content-Type' => content_type
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create.")
        if _context.response.status_code == 400
          raise APIException.new(
            '',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
          _context.response.raw_body.nil? ||
          _context.response.raw_body.to_s.strip.empty?
        decoded

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # This will delete the webhook wuth the give id.
    # a **Response 404 is returned when** :
    #     <ul>
    #      <li>there is no webhook  with this `webhookId` </li>
    #     </ul>
    # @param [UUID | String] webhook_id Required parameter: Example:
    # @return void response from the API call
    def delete_delete_and_update_webhook(webhook_id)
      begin
        @logger.info("delete_delete_and_update_webhook called.")
        # Prepare query url.
        @logger.info("Preparing query URL for delete_delete_and_update_webhook.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/webooks/messages/{webhookId}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'webhookId' => webhook_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for delete_delete_and_update_webhook.')
        _request = @http_client.delete(
          _query_url
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'delete_delete_and_update_webhook')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for delete_delete_and_update_webhook.")
        if _context.response.status_code == 404
          raise APIException.new(
            '',
            _context
          )
        end
        validate_response(_context)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # This will retrieve all webhooks for the account we're connected with.
    # a **Response 400 is returned when** :
    #     <ul>
    #      <li>the `page` query parameter is not valid </li>
    #      <li>the `pageSize` query parameter is not valid </li>
    #     </ul>
    # @param [Integer] page Optional parameter: Example:
    # @param [Integer] page_size Optional parameter: Example:
    # @return RetrieveResponse response from the API call
    def retrieve(page = nil,
                 page_size = nil)
      begin
        @logger.info("retrieve called.")
        # Prepare query url.
        @logger.info("Preparing query URL for retrieve.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/webooks/messages/'
        _query_builder = APIHelper.append_url_with_query_parameters(
          _query_builder,
          {
            'page' => page,
            'pageSize' => page_size
          },
          array_serialization: Configuration.array_serialization
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for retrieve.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for retrieve.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'retrieve')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for retrieve.")
        if _context.response.status_code == 400
          raise APIException.new(
            '',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for retrieve.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        RetrieveResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # This will update a webhook and returned the updated Webhook.
    # you can update all the attributes individually or together.
    # PS : the new value will override the previous one.
    # ### Parameters
    # + same parameters rules as create webhook apply
    #  a **Response 404 is returned when** :
    #     <ul>
    #      <li>there is no webhook with this `webhookId` </li>
    #     </ul>
    #  a **Response 400 is returned when** :
    #     <ul>
    #       <li>all attributes are null </li>
    #      <li>events array is empty </li>
    #      <li>content-Type is set in the headers instead of using the
    # `encoding` attribute  </li>
    #     </ul>
    # @param [UUID | String] webhook_id Required parameter: Example:
    # @param [String] content_type Required parameter: Example:
    # @param [UpdateRequest] body Required parameter: Example:
    # @return void response from the API call
    def update(webhook_id,
               content_type,
               body)
      begin
        @logger.info("update called.")
        # Prepare query url.
        @logger.info("Preparing query URL for update.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/webooks/messages/{webhookId}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'webhookId' => webhook_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for update.")
        _headers = {
          'Content-Type' => content_type
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for update.')
        _request = @http_client.patch(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'update')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for update.")
        if _context.response.status_code == 404
          raise APIException.new(
            '',
            _context
          )
        end
        validate_response(_context)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
