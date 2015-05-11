class PagesController < ApplicationController
  def home
    @name = 'Nitin Gupta'
    @message = 'Thanks for coming!'
    @Home=Home.new
  end
  
  def about
  end
end
