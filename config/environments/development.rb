SisoClient::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end

SISO_APP_ID = "c0833d6c6f1b4650c1a755e0ba3ca4a7f9f869c3f45522c6f2bb9c64db8306b1"
SISO_SECRET = "5f299b1de392546e02eb62a5280043c2b5379590a4f0eff69e80762396538d48"

SISO_SITE = "http://sandbox.example.com"
SISO_AUTHORIZE_URL = "/siso/oauth/authorize"
SISO_TOKEN_URL = "/siso/oauth/token"
