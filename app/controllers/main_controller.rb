class MainController < ApplicationController
  # GET /
  # Homepage - google-esque search box
  def home
    respond_to do |format|
      format.html #home.erb.html 
    end
  end
end
