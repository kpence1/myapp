class SessionsController < ApplicationController

  def new
  end

  def create
    fisher = Fisher.find_by(email: params[:session][:email].downcase)
    if fisher && fisher.authenticate(params[:session][:password])
      # Sign the fisher in and redirect to the fisher's show page.
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end