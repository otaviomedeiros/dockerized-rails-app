require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module DockerizedRailsAppExample
  class Application < Rails::Application
    config.cache_store = :redis_store, ENV['CACHE_URL']
    config.active_record.raise_in_transactional_callbacks = true
  end
end
