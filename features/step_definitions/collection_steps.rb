Given /^I am logged in$/ do
  @current_user = User.create
end

Given /^there are the following songs in my collection:$/ do |table|
  @current_user.create_collection

  table.hashes.each do |song|
    @current_user.collection.songs << Song.new(name: song)
  end
end

When /^I view my collection$/ do
  visit collection_path
end

Then /^I should see:$/ do |table|
  find('#song_list')
  song_names = all('#song_list .song').map(&:text)

  @current_user.collection.songs.map(&:name) =~ song_names
end
