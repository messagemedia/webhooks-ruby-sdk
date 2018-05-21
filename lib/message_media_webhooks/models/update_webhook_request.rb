# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # UpdateWebhookRequest Model.
  class UpdateWebhookRequest < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :encoding

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :events

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :template

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['method'] = 'method'
      @_hash['encoding'] = 'encoding'
      @_hash['events'] = 'events'
      @_hash['template'] = 'template'
      @_hash
    end

    def initialize(url = nil,
                   method = nil,
                   encoding = nil,
                   events = nil,
                   template = nil)
      @url = url
      @method = method
      @encoding = encoding
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
      events = hash['events']
      template = hash['template']

      # Create object from extracted values.
      UpdateWebhookRequest.new(url,
                               method,
                               encoding,
                               events,
                               template)
    end
  end
end
