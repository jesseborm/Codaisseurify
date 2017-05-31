Song.delete_all
Artist.delete_all

song1 = Song.create!( { title: "Divenire", year: "2006", album: "Divenire" } )
song2 = Song.create!( { title: "Fly", year: "2006", album: "Divenire" } )
song3 = Song.create!( { title: "The Earth Prelude", year: "2000", album: "Islands" } )
song4 = Song.create( { title: "In the Jailhouse Now", year: "2000", album: "O Brother, Where Art Thou?" } )
song5 = Song.create( { title: "Man of Constant Sorrow", year: "2000", album: "O Brother, Where Art Thou?" } )
song6 = Song.create( { title: "A Head Full of Dreams", year: "2015", album: "A Head Full of Dreams" } )
song7 = Song.create( { title: "Hymn For the Weekend", year: "2015", album: "A Head Full of Dreams" } )
song8 = Song.create( { title: "Adventure Of a Lifetime", year: "2015", album: "A Head Full of Dreams" } )


# Photos:
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dcuuut1py/image/upload/v1485012037/lud-einaudi_e44rex.jpg")
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dcuuut1py/image/upload/v1485012411/o-brother-where-art-thou-2000-soggy-bottom-boys-george-clooney-tim-blake-nelson-john-turturro-chris-thomas-king-bw_nk1bho.jpg")
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dcuuut1py/image/upload/v1485011868/Screen-Shot-2014-03-20-at-10.23.34-AM_szugaa.jpg")


# Artists
artist1 = Artist.create!(name: "Ludovico Einaudi", quality: 9, songs: [song1, song2, song3], image: [photo1])
artist2 = Artist.create!(name: "The Soggy Bottom Boys", quality: 9, songs: [song4, song5], image: [photo2])
artist3 = Artist.create!(name: "Coldplay", quality: 7, songs: [song6, song7, song8], image: [photo3])
