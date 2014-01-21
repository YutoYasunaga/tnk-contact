class HomeController < ApplicationController

  def index
    @contact = Contact.new
    ContactMailer.welcome.deliver
  end

  def done
    @contact = Contact.last
  end

end
