require 'rails_helper'

describe "#deleting all songs" do

  let(:artist) { create :artist }
  let!(:song1) { create :song, title: "Title1", artist: artist }
  let!(:song2) { create :song, title: "Title2", artist: artist }
  let!(:song3) { create :song, title: "Title3", artist: artist }


  # it 'deletes all songs' do
  #   songs = [song1, song2, song3]
  #   artist.songs << songs
  #   expect { songs.destroy }.to change { artist.songs.count }.by(-(artist.songs.length))
  #   end


  it "shows no songs" do
    expect(Song.count).to eq 0
  end


end
