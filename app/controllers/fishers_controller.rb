class FishersController < ApplicationController
  def show
    @fisher = Fisher.find(params[:id])
  end

  def new
  	@fisher = Fisher.new
  end

  def create
    @fisher = Fisher.new(fisher_params)
    if @fisher.save
      flash[:success] = "Welcome to Fishizzle!"
      redirect_to @fisher
    else
      render 'new'
    end
  end

  private

    def fisher_params
      params.require(:fisher).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end




