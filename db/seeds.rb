Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!(name: "Kryptic Minds")
artist2 = Artist.create!(name: "Galimatias")
artist3 = Artist.create!(name: "KAASI")
artist4 = Artist.create!(name: "Skream")
artist5 = Artist.create!(name: "FKJ")
artist6 = Artist.create!(name: "Taiki")


song1 = Song.create!({ title: "Six Degrees",
                        release_date: DateTime.new(2009,2,23),
                        genre: "dubstep",
                        artwork: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1499504458/one_of_us_u3zbsu.jpg",
                        album: "One of Us",
                        artist: artist1 })

song2 = Song.create!({ title: "Young Chimera",
                        release_date: DateTime.new(2013,1,1),
                        genre: "electronic",
                        artwork: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1499504464/young_chimera_bpcljq.jpg",
                        album: "Young Chimera Single",
                        artist: artist2 })

song3 = Song.create!({ title: "Between Moods",
                        release_date: DateTime.new(2013,7,8),
                        genre: "electronic",
                        artwork: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1499504466/between_moods_yap7nf.jpg",
                        album: "Time for a Change - EP",
                        artist: artist5 })

song4 = Song.create!({ title: "Exothermic Reaction",
                        release_date: DateTime.new(2011,7,25),
                        genre: "electronic",
                        artwork: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1499504470/exothermic_reaction_uwvmq4.jpg",
                        album: "Exothermic Reaction - Single",
                        artist: artist4 })
