class MainController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "admin", :only => :admin
  # GET /
  # Homepage - google-esque search box
  def home
    respond_to do |format|
      format.html #home.erb.html 
    end
  end

  def admin
    @terms = Term.all
    @definitions = Definition.all
    @groups = Group.all
    @users = User.all

    respond_to do |format|
      format.html #admin.erb.html
    end
  end
end
