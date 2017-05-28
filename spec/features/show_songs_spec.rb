require 'rails_helper'

describe "show a list of songs for artist" do
  # before do
  #   visit artist_song_url(artist)
  # end

  let(:artist) { create :artist }
  let!(:song1) { create :song, title: "Title1", artist: artist }
  let!(:song2) { create :song, title: "Title2", artist: artist }
  let!(:song3) { create :song, title: "Title3", artist: artist }

  it "shows the song's details" do
    visit artist_song_path(artist)
    expect(page).to have_text("Title1")
    expect(page).to have_text("Title2")
    expect(page).to have_text("Title3")
  end
end
