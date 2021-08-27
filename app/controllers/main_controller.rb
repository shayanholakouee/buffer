class MainController < ApplicationController
  def index
    flash.now[:notice]="logged in Successfuly"
    flash.now[:alert]="Invalid email or password"
  end
end
