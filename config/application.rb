require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TechblogApp
  class Application < Rails::Application
    config.load_defaults 7.2

    config.generators do |g|
      g.assets false  # CSS, Javascriptファイルを自動作成しない
      g.helper false  # helperファイルを自動作成しない
    end

    config.autoload_lib(ignore: %w[assets tasks])
  end
end
