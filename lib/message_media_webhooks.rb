# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).
require 'date'
require 'json'
require 'faraday'
require 'certifi'
require 'logging'

require_relative 'message_media_webhooks/api_helper.rb'
require_relative 'message_media_webhooks/message_media_webhooks_client.rb'

# Http
require_relative 'message_media_webhooks/http/http_call_back.rb'
require_relative 'message_media_webhooks/http/http_client.rb'
require_relative 'message_media_webhooks/http/http_method_enum.rb'
require_relative 'message_media_webhooks/http/http_request.rb'
require_relative 'message_media_webhooks/http/http_response.rb'
require_relative 'message_media_webhooks/http/http_context.rb'
require_relative 'message_media_webhooks/http/faraday_client.rb'
require_relative 'message_media_webhooks/http/auth/basic_auth.rb'

# Models
require_relative 'message_media_webhooks/models/base_model.rb'
require_relative 'message_media_webhooks/models/retrieve_response.rb'
require_relative 'message_media_webhooks/models/update_request_15.rb'
require_relative 'message_media_webhooks/models/headers.rb'
require_relative 'message_media_webhooks/models/update_request.rb'
require_relative 'message_media_webhooks/models/create_request.rb'

# Exceptions
require_relative 'message_media_webhooks/exceptions/api_exception.rb'

require_relative 'message_media_webhooks/configuration.rb'

# Controllers
require_relative 'message_media_webhooks/controllers/base_controller.rb'
require_relative 'message_media_webhooks/controllers/api_controller.rb'
