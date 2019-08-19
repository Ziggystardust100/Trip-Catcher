class CatchersController < ApplicationController

  def edit
    @catcher = current_catcher
    authorize @catcher
    @catcher.pictures.build if @catcher.pictures.empty?

  end

  def update
    @catcher = current_catcher
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
    @catchers = policy_scope(Catcher).order(created_at: :asc)
  end

  private

  def catcher_params
    params.require(:catcher).permit(:first_name, :last_name, :user_name, :gender, :occupation, :hobbies, :past_destinations, :description, pictures_attributes: [:photo, :id, :_destroy])
  end
end
