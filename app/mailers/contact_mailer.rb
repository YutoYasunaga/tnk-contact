class ContactMailer < ActionMailer::Base
  def send_mail(recipient)
    @recipient = recipient
    @sender = Contact.last
    mail(from: @sender.name, to: @recipient, subject: @sender.email).deliver
  end
end
