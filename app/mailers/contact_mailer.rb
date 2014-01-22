class ContactMailer < ActionMailer::Base
  def send_mail(recipient)
    @recipient = recipient
    @sender = Contact.last
    mail(from: "Admin", to: @recipient, subject: "Test mail")
  end
end
