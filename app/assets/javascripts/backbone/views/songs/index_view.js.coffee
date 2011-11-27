MusicStash.Views.Songs ||= {}

class MusicStash.Views.Songs.IndexView extends Backbone.View
  template: JST["backbone/templates/songs/index"]
       
  render: ->
    $(@el).html(@template())
    return this