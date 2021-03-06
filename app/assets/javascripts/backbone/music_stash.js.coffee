#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers

window.MusicStash =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: (songs = {}) ->
    new MusicStash.Routers.SongsRouter()

    @songs = new MusicStash.Collections.SongsCollection(songs)

    if not Backbone.history.started
      Backbone.history.start()
      Backbone.history.started = true
