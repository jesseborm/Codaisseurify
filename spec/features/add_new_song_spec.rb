require 'rails_helper'

describe "Creating a new song" do

  let(:artist) { create :artist }
  let(:song) { create :song, title: "someTitle", album: "someAlbum", artist: artist }

  it "shows the new song form" do
    visit artist_path(artist)
    expect(page).to have_field "Title"
    expect(page).to have_field "Album"
    expect(page).to have_button "Save"
  end

  it "fills in new song form and displays new song on page" do
    visit artist_path(artist)
    fill_in "Title", with: song.title
    fill_in "Album", with: song.album
    select '2012', from: song.year
    click_on "Save"
    # song.save!
    expect(page).to have_text(song.title)

  end

  it { expect { song.save }.to change { artist.songs.count }.by(+1) }

end
