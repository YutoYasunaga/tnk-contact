class ContactMailer < ActionMailer::Base
  default from: "auto@tnkjapan.com"
  def send_mail(recipient)
    @recipient = recipient
    @sender = Contact.last
    mail(to: @recipient, subject: "#{@sender.name}さんからのメール")
  end
end
