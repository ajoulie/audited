module RailsApp
  class Application < Rails::Application
    config.root = File.expand_path('../../', __FILE__)
    config.secret_key_base = 'my_secret_key'
  end
end
