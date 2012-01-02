class MusicStash.Models.Song extends Backbone.Model
  paramRoot: 'song'

  defaults:
    name: null
  
class MusicStash.Collections.SongsCollection extends Backbone.Collection
  model: MusicStash.Models.Song
  url: '/songs.json'
