describe 'MusicStash.Collections.SongsCollection', ->
  beforeEach ->
    @sc = new MusicStash.Collections.SongsCollection()
    
  it 'contains instances of MusicStash.Models.Song', ->
    expect(@sc.model).toEqual(MusicStash.Models.Song)

  it 'persists at /songs', ->
    expect(@sc.url).toEqual('/songs.json')
