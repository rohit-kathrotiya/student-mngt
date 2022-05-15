class CrudNotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notifications_mailer.create_notification.subject
  #
  def create_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notifications_mailer.update_notification.subject
  #
  def update_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notifications_mailer.delete_notification.subject
  #
  def delete_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
