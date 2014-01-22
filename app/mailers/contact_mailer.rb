class ContactMailer < ActionMailer::Base
  default from: "auto@tnkjapan.com"
  def send_mail(recipient, content)
    @content = content
    @recipient = recipient
    @sender = Contact.last
    mail(to: @recipient, subject: "#{@sender.name}", body: @content)
  end
end
