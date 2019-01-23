Scheduling::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # TLD length
  config.action_dispatch.tld_length = APP_CONFIG['env_config']['tld_length']

  # Action mailer host setting
  config.action_mailer.default_url_options = { :host => APP_CONFIG['env_config']['site_host'] }

  # Code is not reloaded between requests
  config.cache_classes = true
  config.eager_load = false
  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.active_record.migration_error = :page_load
  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  # config.public_file_server.headers = "public, max-age=3600"
  config.serve_static_assets = true

  # Compress JavaScripts and CSS
  # config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to Rails.root.join("public/assets")
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
   #config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = true

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end

end
