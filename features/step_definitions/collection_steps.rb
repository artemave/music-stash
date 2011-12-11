Given /^I have the following songs:$/ do |table|
  @songs = []
  table.hashes.each do |row|
    @songs << Tempfile.new(row['file_name'])
  end
end

When /^I upload them into MusicStash$/ do
  @songs.each do |s|
    `bundle exec music-stash add #{s}`
  end
end

When /^I view my collection$/ do
  visit collection_path
end

Then /^I should see them in my collection$/ do
  find('#songs')
  song_names = all('#songs .song').map(&:text)

  song_names.should =~ @songs.map {|s| File.basename(s.path) }
end
