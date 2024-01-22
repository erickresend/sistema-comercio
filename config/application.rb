require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Comercio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # config/initializers/locale.rb

    # Where the I18n library should search for translation files
    I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]

    # Permitted locales available for the application
    I18n.available_locales = [:en, :'pt-br']

    # Set default locale to something other than :en
    I18n.default_locale = :'pt-br'


    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    #Rspec Configuration
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false,
                               :controller_specs => false,
                               :helper_specs => false,
                               :routing_specs => false,
                               :request_specs => false
  end
end
end
