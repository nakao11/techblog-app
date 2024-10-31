require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TechblogApp
  class Application < Rails::Application
    config.load_defaults 7.2
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.assets false  # CSS, Javascriptファイルを自動作成しない
      g.helper false  # helperファイルを自動作成しない
      g.test_framework :rspec,
        fixtures: false, # テストDBにレコードを作るfixtureの作成をスキップ(FactoryBotを使用するため)
        view_specs: false, # ビューファイル用のスペックを作成しない
        helper_specs: false, # ヘルパーファイル用のスペックを作成しない
        routing_specs: false # routes.rb用のスペックファイル作成しない
    end

    config.autoload_lib(ignore: %w[assets tasks])
  end
end
