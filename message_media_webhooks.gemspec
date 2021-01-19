Gem::Specification.new do |s|
  s.name = 'messagemedia_webhooks_sdk'
  s.version = '1.0.1'
  s.summary = 'message_media_webhooks'
  s.description = 'The MessageMedia Webhooks allows you to subscribe to one or several events and when one of those events is triggered, an HTTP request is sent to the URL of your choice along with the message or payload. In simpler terms, it allows applications to "speak" to one another and get notified automatically when something new happens.'
  s.authors = ['MessageMedia Developers']
  s.email = 'developers@messagemedia.com'
  s.homepage = 'https://developers.messagemedia.com'
  s.license = 'Apache-2.0'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '>= 0.10')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
