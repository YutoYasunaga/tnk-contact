class ContactMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome
    mail(to: "morumotto26@gmail.com", subject: "Welcome", body: "Have a nice day")
  end
end
