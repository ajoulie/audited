if defined?(ActionController) and defined?(ActionController::Base)
  module Audited
    class Railties < ::Rails::Railtie
      initializer "action_controller.audit.sweepers" do
        ActiveSupport.on_load(:action_controller) do
          ActionController::Base.class_eval do
            around_filter Audited::Sweeper.instance
          end
        end
      end
    end
  end
end
