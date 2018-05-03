# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaWebhooks
  # Headers Model.
  class Headers < BaseModel
    # Example of
    # @return [String]
    attr_accessor :account

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account'] = 'Account'
      @_hash
    end

    def initialize(account = nil)
      @account = account
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account = hash['Account']

      # Create object from extracted values.
      Headers.new(account)
    end
  end
end
