Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  # devise設定
  config.action_mailer.default_url_options = { :host => "localhost", :port => 3000 }
  #追加分
  config.middleware.delete Rack::Lock  

  # config.action_controller.asset_host = 'http://localhost:3000'
  # config.action_mailer.asset_host = config.action_controller.asset_host
  # config.action_mailer.default_url_options= { host:'localhost:3000' }
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.default_url_options = { host: 'microfab.asia' }
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.smtp_settings = {
  #   :address              => "email-smtp.us-west-2.amazonaws.com",
  #   :port                 => 465,
  #   :domain               => 'microfab.asia',
  #   :user_name            => 'AKIAJKFFHJ6R5SHNSH7Q',
  #   :password             => 'ArdNXQWcy9IQ+I97bnDbGQO4PAH+SmuffIqjsssQnmIj',
  #   :authentication       => :login,
  #   :enable_starttls_auto => true
  # }

  #gmailでのテスト送信用
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    :enable_starttls_auto => true,
    :address => 'smtp.gmail.com',
    :port => '587',
    :domain => 'smtp.gmail.com',
    :authentication => 'plain',
    :user_name => 'mitsuimasayoshi@gmail.com',
    :password => 'mitsui1129'
  }
end
