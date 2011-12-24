describe "MusicStash.Views.Songs.IndexView", ->
  it "renders songs table", ->
    view = new MusicStash.Views.Songs.IndexView()
    $el = $(view.render().el)

    expect($el).toBe("#songs")
    expect($el).toContain('table')

  it "renders a collection of songs", ->
    songsCollection = new MusicStash.Collections.SongsCollection [
      new MusicStash.Models.Song name: 'Song4.mp3'
      new MusicStash.Models.Song name: 'Song34.mp3'
    ]

    view = new MusicStash.Views.Songs.IndexView(collection: songsCollection)
    $el = $(view.render().el)

    expect($el).toHaveText(/Song4.mp3/)
    expect($el).toHaveText(/Song34.mp3/)

  it "renders empty collection", ->
    view = new MusicStash.Views.Songs.IndexView()
    $el = $(view.render().el)

    expect($el).toHaveText(/This collection appears to be empty/)

