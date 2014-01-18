class HomeController < ApplicationController

  def index
    @contact = Contact.new
  end

  def done
    @contact = Contact.last
  end

end
