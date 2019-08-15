class CatchersController < ApplicationController
  def edit
    @catcher = Catcher.find(params[:id])
    authorize @catcher
  end

  def update
    @catcher = Catcher.find(params[:id])
    authorize @catcher
    if @catcher.update(catcher_params)
      redirect_to catcher_path(@catcher)
    else
      render :edit
    end
  end

  def show
    @catcher = Catcher.find(params[:id])
    authorize @catcher
  end

  def index
    @catchers = policy_scope(Catcher)
  end

  private

  def catcher_params
    params.require(:catcher).permit(:first_name, :last_name, :user_name, :gender, :occupation, :hobbies, :past_destinations)
  end
end
