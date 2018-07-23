class ApplicationMailer < ActionMailer::Base
  default from: ENV['MAILGUN_LOGIN']
  layout 'mailer'
end
