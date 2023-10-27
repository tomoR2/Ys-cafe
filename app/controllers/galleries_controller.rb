class GalleriesController < ApplicationController

  def index
    @gallerys = Gallery.includes(:user).order("created_at DESC")
  end
end
