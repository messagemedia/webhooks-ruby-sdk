# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # UpdateRequest Model.
  class UpdateRequest < BaseModel
    # target for the webhook. http and https are authorized
    # @return [String]
    attr_accessor :url

    # authorized webhook methods  :  GET, POST, PUT, DELETE, PATCH
    # @return [String]
    attr_accessor :method

    # JSON, FORM_ENCODED, XML
    # @return [String]
    attr_accessor :encoding

    # customized headers.no content Type header because we set it in the
    # encoding attribute. an example belowf
    # @return [Object]
    attr_accessor :headers

    # list of events we want to suscribe to. see docs
    # @return [List of String]
    attr_accessor :events

    # expected template. see doc for possibilitie
    # @return [String]
    attr_accessor :template

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['method'] = 'method'
      @_hash['encoding'] = 'encoding'
      @_hash['headers'] = 'headers'
      @_hash['events'] = 'events'
      @_hash['template'] = 'template'
      @_hash
    end

    def initialize(url = nil,
                   method = nil,
                   encoding = nil,
                   headers = nil,
                   events = nil,
                   template = nil)
      @url = url
      @method = method
      @encoding = encoding
      @headers = headers
      @events = events
      @template = template
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      method = hash['method']
      encoding = hash['encoding']
      headers = hash['headers']
      events = hash['events']
      template = hash['template']

      # Create object from extracted values.
      UpdateRequest.new(url,
                        method,
                        encoding,
                        headers,
                        events,
                        template)
    end
  end
end
