class StoriesController < ApplicationController
  def index
    @stories = policy_scope(Story)
  end

  def show
    @story = Story.find(params[:id])
    authorize @story
  end

  def new
    @story = Story.new
    authorize @story
  end

  def create
    @story = Story.new(story_params)
    @story.catcher = current_catcher
    authorize @story
    if @story.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def destroy
    @story = Story.find(params[:id])
    authorize @story
    @story.destroy
    redirect_to root_path
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :rating, :destination_id)
  end

end
