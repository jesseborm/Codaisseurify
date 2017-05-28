Song.delete_all
Artist.delete_all

song1 = Song.create( { title: "Divenire", year: "2006", album: "Divenire" } )
song2 = Song.create( { title: "Fly", year: "2006", album: "Divenire" } )
song3 = Song.create( { title: "The Earth Prelude", year: "2000", album: "Islands" } )
song4 = Song.create( { title: "In the Jailhouse Now", year: "2000", album: "O Brother, Where Art Thou?" } )
song5 = Song.create( { title: "Man of Constant Sorrow", year: "2000", album: "O Brother, Where Art Thou?" } )
song6 = Song.create( { title: "A Head Full of Dreams", year: "2015", album: "A Head Full of Dreams" } )
song7 = Song.create( { title: "Hymn For the Weekend", year: "2015", album: "A Head Full of Dreams" } )
song8 = Song.create( { title: "Adventure Of a Lifetime", year: "2015", album: "A Head Full of Dreams" } )

artist1 = Artist.create(name: "Ludovico Einaudi", quality: 9, songs: [song1, song2, song3], image: "~/Documents/coding/intermediate-bootcamp/Codaisseurify/app/public/einaudi.jpg")
artist2 = Artist.create(name: "The Soggy Bottom Boys", quality: 9, songs: [song4, song5], image: "app/public/brotherB&W.jpg")
artist3 = Artist.create(name: "Coldplay", quality: 7, songs: [song6, song7, song8], image: "app/public/coldplay.jpg")
