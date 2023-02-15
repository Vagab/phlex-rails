# frozen_string_literal: true

require "phlex/rails"
require "bundler"
Bundler.require :default

Combustion.initialize! :action_controller, :action_view do
	config.autoload_paths << "#{root}/app/views"
	config.autoload_paths << "#{root}/app/views/layouts"
	config.autoload_paths << "#{root}/app/views/components"
end

require "rspec/rails"

RSpec.configure do |config|
	config.use_transactional_fixtures = true
end

Zeitwerk::Loader.eager_load_all
