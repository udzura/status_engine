require 'rails/engine'
module StatusEngine
  class Engine < ::Rails::Engine
    isolate_namespace StatusEngine

    config.generators.stylesheets = false
    config.generators.javascripts = false
  end
end
