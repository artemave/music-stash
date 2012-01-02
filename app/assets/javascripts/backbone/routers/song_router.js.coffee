class MusicStash.Routers.SongsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "": "index"
    
  index: ->
    view = new MusicStash.Views.Songs.IndexView(collection: MusicStash.songs || {})
    $("#songs").html(view.render().el)
    
