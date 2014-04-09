require 'audited/railtie' if defined?(Rails)

module Audited
  VERSION = '4.0.0'

  class << self
    attr_accessor :ignored_attributes, :current_user_method, :audit_class, :use_version_number

    def store
      Thread.current[:audited_store] ||= {}
    end
  end

  @ignored_attributes = %w(lock_version created_at updated_at created_on updated_on)

  @current_user_method = :current_user
  @use_version_number = true
end
