# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # CreateRequest Model.
  class CreateRequest < BaseModel
    # target for the webhook. http and https are authorized
    # @return [String]
    attr_accessor :url

    # authorized webhook methods  :  GET, POST, PUT, DELETE, PATCH
    # @return [String]
    attr_accessor :method

    # JSON, FORM_ENCODED, XML
    # @return [String]
    attr_accessor :encoding

    # list of events we want to suscribe to. see docs
    # @return [List of String]
    attr_accessor :events

    # expected template. see doc for possibilities
    # @return [String]
    attr_accessor :template

    # customized headers.no content Type header because we set it in the
    # encoding attribute. an example below
    # @return [Headers]
    attr_accessor :headers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['method'] = 'method'
      @_hash['encoding'] = 'encoding'
      @_hash['events'] = 'events'
      @_hash['template'] = 'template'
      @_hash['headers'] = 'headers'
      @_hash
    end

    def initialize(url = nil,
                   method = nil,
                   encoding = nil,
                   events = nil,
                   template = nil,
                   headers = nil)
      @url = url
      @method = method
      @encoding = encoding
      @events = events
      @template = template
      @headers = headers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      method = hash['method']
      encoding = hash['encoding']
      events = hash['events']
      template = hash['template']
      headers = Headers.from_hash(hash['headers']) if hash['headers']

      # Create object from extracted values.
      CreateRequest.new(url,
                        method,
                        encoding,
                        events,
                        template,
                        headers)
    end
  end
end
