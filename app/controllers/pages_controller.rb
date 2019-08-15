class PagesController < ApplicationController
  skip_before_action :authenticate_catcher!, only: :home

  def home
  end
end
