class PagesController < ApplicationController
  skip_before_action :authenticate_catcher!, only: :home

  def home
    @destinations = Destination.all
    @catchers = Catcher.all
    @stories = Story.all
  end
end
