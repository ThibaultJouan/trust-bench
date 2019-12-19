# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['EMAIL_ADDRESS'],
  :password => ENV['EMAIL_PASSWORD'],
  :domain => 'gmail.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :login,
  :enable_starttls_auto => true
}
