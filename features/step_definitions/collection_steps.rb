Given /^I have the following songs:$/ do |table|
  @songs = []
  table.hashes.each do |row|
    @songs << Tempfile.new(row['file_name']).path
  end
end

When /^I upload them into MusicStash$/ do
  #`bundle exec music-stash add #{@songs.join(' ')}`
  #TODO swap temporary implementation (below) with the intended one (above)
  @songs.each do |s|
    Song.create name: File.basename(s)
  end
end

When /^I view my collection$/ do
  visit root_path
end

Then /^I should see them in my collection$/ do
  find('#songs')
  song_names = all('#songs td').map(&:text)

  song_names.should =~ @songs.map {|s| File.basename s }
end
