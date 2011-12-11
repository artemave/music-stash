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
  init: ->
    new MusicStash.Routers.SongsRouter()
    Backbone.history.start()
