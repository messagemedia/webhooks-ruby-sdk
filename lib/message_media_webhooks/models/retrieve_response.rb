# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # RetrieveResponse Model.
  class RetrieveResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :page

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :page_size

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :page_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'page'
      @_hash['page_size'] = 'pageSize'
      @_hash['page_data'] = 'pageData'
      @_hash
    end

    def initialize(page = nil,
                   page_size = nil,
                   page_data = nil)
      @page = page
      @page_size = page_size
      @page_data = page_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = hash['page']
      page_size = hash['pageSize']
      page_data = hash['pageData']

      # Create object from extracted values.
      RetrieveResponse.new(page,
                           page_size,
                           page_data)
    end
  end
end
