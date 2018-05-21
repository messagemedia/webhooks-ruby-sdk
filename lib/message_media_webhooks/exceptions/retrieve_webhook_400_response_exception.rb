

module MessageMediaWebhooks
  # Retrieve Webhook 400 response class.
  class RetrieveWebhook400ResponseException < APIException
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @message = hash['message']
    end
  end
end
