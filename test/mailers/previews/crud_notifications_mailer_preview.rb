# Preview all emails at http://localhost:3000/rails/mailers/crud_notifications_mailer
class CrudNotificationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/crud_notifications_mailer/create_notification
  def create_notification
    CrudNotificationsMailer.create_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notifications_mailer/update_notification
  def update_notification
    CrudNotificationsMailer.update_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notifications_mailer/delete_notification
  def delete_notification
    CrudNotificationsMailer.delete_notification
  end

end
