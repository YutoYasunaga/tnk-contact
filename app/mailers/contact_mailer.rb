class ContactMailer < ActionMailer::Base
  def send_mail(recipient)
    @recipient = recipient
    @sender = Contact.last
    mail(from: "#{@sender.name}", to: "#{@recipient}", subject: "#{@sender.email}").deliver
  end
  def test_mail(content)
    @content = content
    mail(from: "Admin", to: "morumotto26@gmail.com", subject: "Test mail", body: @content).deliver
  end
end
