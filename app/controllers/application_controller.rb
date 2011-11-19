class ApplicationController < ActionController::Base
  protect_from_forgery

  def bootstrap
    render text: 'This is Music Stash!', layout: 'application'
  end
end
