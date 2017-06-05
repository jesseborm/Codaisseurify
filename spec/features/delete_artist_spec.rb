require "rails_helper"

describe "deleting an artist" do

  let(:artist) { create :artist }
  let!(:song1) { create :song, artist: artist }

  it "destroys the songs when destroying artist" do
    expect { artist.destroy }.to change { Song.count }.by(-1)
  end
end
