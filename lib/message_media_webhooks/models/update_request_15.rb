# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # UpdateRequest15 Model.
  class UpdateRequest15 < BaseModel
    # target for the webhook. http and https are authorized
    # @return [String]
    attr_accessor :url

    # expected template. see doc for possibilitie
    # @return [String]
    attr_accessor :template

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['template'] = 'template'
      @_hash
    end

    def initialize(url = nil,
                   template = nil)
      @url = url
      @template = template
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      template = hash['template']

      # Create object from extracted values.
      UpdateRequest15.new(url,
                          template)
    end
  end
end
