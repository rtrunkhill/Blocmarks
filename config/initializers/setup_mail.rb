ActionMailer::Base.smtp_settings = {
  port:              2525,
  address:           'smtp.mailgun.org',
  user_name:         ENV['MAILGUN_SMTP_LOGIN'],
  password:          ENV['MAILGUN_SMTP_PASSWORD'],
  domain:            'blocmarksrt.herokuapp.com',
  authentication:    :plain,
  content_type:      'text/html'

}
ActionMailer::Base.delivery_method = :smtp

# Makes debugging *way* easier.
ActionMailer::Base.raise_delivery_errors = true

#   From Chrstine
# ActionMailer::Base.smtp_settings = {
#   port:              587,
#   address:           'smtp.mailgun.org',
#   user_name:         ENV['MAILGUN_SMTP_LOGIN'],
#   password:          ENV['MAILGUN_SMTP_PASSWORD'],
#   domain:            'stormy-retreat-49671.herokuapp.com',
#   authentication:    :plain,
#   content_type:      'text/html'
# }


  # if Rails.env.development? || Rails.env.production?
  #   ActionMailer::Base.delivery_method = :smtp
  #   ActionMailer::Base.smtp_settings = {
  #     address:        'smtp.sendgrid.net',
  #     port:           '2525',
  #     authentication: :plain,
  #     user_name:      ENV['SENDGRID_USERNAME'],
  #     password:       ENV['SENDGRID_PASSWORD'],
  #     domain:         'heroku.com',
  #     enable_starttls_auto: true
  #   }
  # end
  