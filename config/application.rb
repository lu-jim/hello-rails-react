require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloRailsReact
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.react.server_renderer_pool_size ||= 1 # ExecJS doesn't allow more than one on MRI
    config.react.server_renderer_timeout ||= 20 # seconds
    config.react.server_renderer = React::ServerRendering::BundleRenderer
    config.react.server_renderer_options = {
      files: ['server_rendering.js'], # files to load for prerendering
      replay_console: true # if true, console.* will be replayed client-side
    }
    # Changing files matching these dirs/exts will cause the server renderer to reload:
    config.react.server_renderer_extensions = %w[jsx js]
    config.react.server_renderer_directories = ['/app/assets/javascripts', '/app/javascript/']

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
