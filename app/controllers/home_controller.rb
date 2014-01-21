class HomeController < ApplicationController

  def index
    @contact = Contact.new
  end

  def done
    @contact = Contact.last
    ContactMailer.send_mail("morumotto26@gmail.com").deliver
  end

end
