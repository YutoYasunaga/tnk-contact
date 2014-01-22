class ContactMailer < ActionMailer::Base
  default from: "Admin@example.com"
  def send_mail(recipient)
    @recipient = recipient
    @sender = Contact.last
    mail(to: @recipient, subject: "Test mail")
  end
end
