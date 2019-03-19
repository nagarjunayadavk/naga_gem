require "naga/version"

module Naga
  class Engine < ::Rails::Engine
  	require 'browser'
    require 'bunny'
    initializer :append_assets_path, group: :all do |app|
          app.config.assets.paths.unshift(*paths["app/views"].existent_directories)
    end
  end
end
