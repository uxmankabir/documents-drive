# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               ENV["DOMAIN"],
  user_name:            Rails.application.credentials.dig(:gmail, :user_name),
  password:             Rails.application.credentials.dig(:gmail, :password),
  authentication:       'plain',
  enable_starttls_auto: true
}