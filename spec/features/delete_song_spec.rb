require 'rails_helper'

describe "deleting a song from the artist show page" do

  let(:artist) { create :artist }
  let!(:song1) { create :song, title: "Title1", artist: artist }
  let!(:song2) { create :song, title: "Title2", artist: artist }

  it "shows song1 & song2 for artist" do
    visit artist_path(artist)
    expect(page).to have_text("Title1")
    expect(page).to have_text("Title2")
  end

  it "changes the amount of songs by - 1" do
    visit artist_path(artist)
    expect { song1.destroy }.to change(Song, :count).by(-1)
  end

  it 'test with other syntax' do
      song = create(:song)
      artist.songs << song
      expect { song.destroy }.to change { artist.songs.count }.by(-1)
      # expect(response).to redirect_to aritst_path(artist)
    end
    # it { is_expected.to redirect_to artist_path(artist) }

end
