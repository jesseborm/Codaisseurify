require 'rails_helper'

describe "artist show page" do

  let(:artist) { create :artist, name: "Master Man"}
  let!(:song1) { create :song, title: "Title1", artist: artist }
  let!(:song2) { create :song, title: "Title2", artist: artist }
  let!(:song3) { create :song, title: "Title3", artist: artist }

  it "shows the artist" do
    visit artist_path(artist)
    expect(page).to have_text("Master Man")
  end

  it "shows the song's details" do
    visit artist_path(artist)
    expect(page).to have_text("Title1")
    expect(page).to have_text("Title2")
    expect(page).to have_text("Title3")
  end

  it "shows 'New Song' link" do
    visit artist_path(artist)
    expect(page).to have_link("New Song")
  end
end
