class MainController < ApplicationController

  def index  

    @user = User.all

    respond_to do |format|

      format.json { render json: @user.to_json }

      redirect_to root_path

    end

  end

end
