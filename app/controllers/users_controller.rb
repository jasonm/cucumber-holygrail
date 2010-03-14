class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    render
  end

  def create
    respond_to do |format|
      format.js do
        name = params[:user][:name]
        render :js => "$('output_area').innerHTML = 'Whats up, #{name}?';"
      end
    end
  end
end
