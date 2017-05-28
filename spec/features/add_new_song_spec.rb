# require 'rails_helper'
#
# describe "Creating a new song"
#   before  do
#     visit
#     visit artist_path
#     click_on "New Song"
#   end
#
#   let(:artist) { create :artist }
#   let(:song) { create :song, artist: artist }
#
#   it "shows the artist"
#   end
#
#   it "shows the new song form"
#     expect(page).to have_field "Title"
#     expect(page).to have_field "Album"
#     expect(page).to have_field "Year"
#     expect(page).to have_button "Save"
#     click_on "Save"
#   end
#
#   it "saves event in database"
#     fill_in "Name", with: "Test Event"
#     fill_in "Description", with: "Testing is so nice"
#     select('50', :from => 'event_capacity')
#
#   end
#
#
#
#   it "takes you to the show event page"
#   end
# end
# #
# # describe "event/new" do
# #   it "infers the controller action" do
# #     expect(controller.request.path_parameters[:action]).to eq("new")
# #   end
# # end
