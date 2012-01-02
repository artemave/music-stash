class HomeController < ApplicationController
  def bootstrap
    @songs = Song.all
  end
end
