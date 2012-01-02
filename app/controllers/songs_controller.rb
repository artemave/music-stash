class SongsController < ApplicationController
  respond_to :json

  def index
    respond_with(Song.all)
  end
end
