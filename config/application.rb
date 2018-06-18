require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    config.load_defaults 5.1
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
  end
end
