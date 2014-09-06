require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DslTutorial
  class Application < Rails::Application
    config.autoload_paths += Dir["#{Rails.root}/app/states"]

    config.after_initialize do
      Dir["#{Rails.root}/app/states/*.rb"].each { |f| load f }
    end
  end
end
