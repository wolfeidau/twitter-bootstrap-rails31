class WelcomeController < ApplicationController


  def index
     @title = "Home"
  end

  def about
     @title = "About"
  end

  def contact
     @title = "Contact"
  end
end
