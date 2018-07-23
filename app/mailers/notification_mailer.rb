class NotificationMailer < ApplicationMailer

    def notification_email
        @request = params[:request]
        mail(to: params[:admin_email], subject: 'Оповещение от панели управления сайтом медтехники')
    end
end
