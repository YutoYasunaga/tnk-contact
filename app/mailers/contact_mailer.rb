class ContactMailer < ActionMailer::Base
  ActionMailer::Base.smtp_settings = {}
  ActionMailer::Base.delivery_method = :smtp
  default from: "from@example.com"
  def welcome
    mail(to: "morumotto26@gmail.com", subject: "Welcome", body: "Have a nice day")
  end
end
