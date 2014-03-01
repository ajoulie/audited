require 'rails/railtie'

if defined?(ActionController) and defined?(ActionController::Base)
  module Audited
    class Railtie < ::Rails::Railtie
      initializer "action_controller.audit.sweepers" do |app|
        require 'audited/active_support.rb'
      end
    end
  end
end
