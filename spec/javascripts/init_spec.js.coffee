describe "MusicStash", ->
  it "has models", ->
    expect(MusicStash.Models).toBeDefined()

  it 'has collections', ->
    expect(MusicStash.Collections).toBeDefined()

  it 'has routers', ->
    expect(MusicStash.Routers).toBeDefined()

  it 'has views', ->
    expect(MusicStash.Views).toBeDefined()

  describe 'init()', ->
    it 'accepts json of songs and creates collection from it', ->
      MusicStash.init([{name: 'Song1'}, {name: 'Song3'}])

      expect(MusicStash.songs).toBeDefined()
      expect(MusicStash.songs.length).toEqual(2)
      expect(MusicStash.songs.models[0].get('name')).toEqual('Song1')
      expect(MusicStash.songs.models[1].get('name')).toEqual('Song3')

    it 'creates songs router', ->
      MusicStash.Routers.SongsRouter = this.spy()
      MusicStash.init()

      expect(MusicStash.Routers.SongsRouter).toHaveBeenCalled()

    it 'starts Backbone.history', ->
      Backbone.history = start: this.spy()

      MusicStash.init()

      expect(Backbone.history.start).toHaveBeenCalled()
