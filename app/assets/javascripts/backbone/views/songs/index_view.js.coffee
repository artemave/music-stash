MusicStash.Views.Songs ||= {}

class MusicStash.Views.Songs.IndexView extends Backbone.View
  tagName: 'div'
  id: 'songs'
  template: JST["backbone/templates/songs/index"]

  render: ->
    $(@el).html(@template(songs: @collection))
    return this
