ActiveSupport.on_load(:action_controller) do
  ActionController::Base.class_eval do
    around_filter Audited::Sweeper.instance
  end
end
