require 'rails_helper'

describe "Creating a new song" do
  before  do
    visit
    visit artist_path
    click_on "New Song"
  end

  let(:artist) { create :artist }
  let(:song) { create :song, artist: artist }

  it "shows the artist" do
  end

  it "shows the new song form" do
    expect(page).to have_field "Title"
    expect(page).to have_field "Album"
    expect(page).to have_field "Year"
    expect(page).to have_button "Save"
  end

  it "saves event in database" do
    fill_in "Name", with: artist.name
    fill_in "Album", with: artist.album
    fill_in "Year", with: artist.year
    click_on "Save"
    redirect_to artist_song_path(artist)
  end

  it "gives overview of songs of artist" do

  end
end
