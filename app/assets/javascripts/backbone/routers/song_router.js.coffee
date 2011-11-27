class MusicStash.Routers.SongsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    "/index": "index"
    
  index: ->
    @view = new MusicStash.Views.Songs.IndexView()
    $("#songs").html(@view.render().el)
    
