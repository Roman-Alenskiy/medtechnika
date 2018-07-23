class ApplicationMailer < ActionMailer::Base
  default from: ENV['YANDEX_LOGIN']
  layout 'mailer'
end
