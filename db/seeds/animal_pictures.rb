puts "Importing Animal Pictures" unless Rails.env.test?

module AnimalPictureSeeder
  @cached_categories = {}

  def self.seed(opts)
    AnimalPictureCategory.where(:animal_picture_id => opts[:id]).destroy_all
    categories = opts.delete(:categories)
    categories.each do |category|
      @cached_categories[category] ||= AnimalCategory.find_or_create_by :name => category
      AnimalPictureCategory.create :animal_picture_id => opts[:id],
                                   :animal_category_id => @cached_categories[category].id
    end

    AnimalPicture.create_or_update(opts)
  end
end

def seed(opts)
  AnimalPictureSeeder.seed(opts)
end

seed(
  :id => 1,
  :title => "Fluffy Dog",
  :file_name => "fluffy_dog.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/pin/85005511688642590/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 2,
  :title => "Smart Dog",
  :file_name => "smart_dog.jpg",
  :source => "JOGJIS",
  :source_url => "http://www.jogjis.com/wallpaper/1024x768/glasses-dog-3155.html",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 3,
  :title => "Lots of Dogs",
  :file_name => "cute_dogs.jpg",
  :source => "fanpop",
  :source_url => "http://www.fanpop.com/clubs/puppies/images/22040946/title/cute-puppies-wallpaper",
  :categories => [
    "Multiple Animals",
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 4,
  :title => "Cute Dog",
  :file_name => "cute_dog.jpg",
  :source => "sampaikini",
  :source_url => "http://www.sampaikini.com/sleepy-dog-dogs-animal-animals-heat-snow-winter-x-www-wallpapers/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 5,
  :title => "Bear Dog",
  :file_name => "bear_dog.jpg",
  :source => "boothedog",
  :source_url => "http://www.boothedog.net/gallery-of-boo/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 6,
  :title => "Dog in a Box",
  :file_name => "animal1.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/pin/38421403045231782/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 7,
  :title => "Bunny with a chip",
  :file_name => "bunny1.jpg",
  :source => "Huffington Post",
  :source_url => "http://www.huffingtonpost.com/2012/09/20/31-cute-internet-animal-images-photos_n_1900668.html",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 8,
  :title => "Bunnies",
  :file_name => "bunny2.jpeg",
  :source => "Cutest Paw",
  :source_url => "http://www.cutestpaw.com/images/cutest-animals-ever/",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 9,
  :title => "Bunny in a field",
  :file_name => "bunny3.jpg",
  :source => "fanpop",
  :source_url => "http://www.fanpop.com/clubs/baby-animals/images/19794537/title/baby-bunny-photo",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 10,
  :title => "Cat in a field",
  :file_name => "cat1.jpg",
  :source => "Wikia",
  :source_url => "http://psychology.wikia.com/wiki/Aesthetic_preferences?file=Stray_kitten_Rambo002.jpg",
  :categories => [
    "Cute",
    "Cat",
  ]
)

seed(
  :id => 11,
  :title => "Cat Paw",
  :file_name => "cat2.jpeg",
  :source => "telusers",
  :source_url => "http://telusers.com/cute-cat-wallpapers-33874-hd-wallpapers.html",
  :categories => [
    "Cute",
    "Cat",
  ]
)

seed(
  :id => 12,
  :title => "Baby Cheetahs",
  :file_name => "cheetah1.jpg",
  :source => "ccmacg",
  :source_url => "https://ccmacg.wikispaces.com/Snow+Leopard",
  :categories => [
    "Cute",
    "Cheetah",
  ]
)

seed(
  :id => 13,
  :title => "Drinking Cheetah",
  :file_name => "cheetah2.jpeg",
  :source => "launchstalker",
  :source_url => "http://launchstalker.com/2018/jaguar-animal-hd-wallpapers/jaguar-animal-hd-wallpapers-2/",
  :categories => [
    "Majestic",
    "Cheetah",
  ]
)

seed(
  :id => 14,
  :title => "Sleeping Puppy",
  :file_name => "dog2.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/happyorange101/cute-puppies/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 15,
  :title => "Flower Dog",
  :file_name => "dog3.jpg",
  :source => "Jessica Trinh",
  :source_url => "http://jessicatrinh.com/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 16,
  :title => "Multiple Animals",
  :file_name => "dog4.jpg",
  :source => "weheartit",
  :source_url => "http://weheartit.com/tag/gatitos/2011",
  :categories => [
    "Cute",
    "Dog",
    "Cat",
  ]
)

seed(
  :id => 17,
  :title => "Baby Husky",
  :file_name => "dog5.jpg",
  :source => "Attack of the Cute",
  :source_url => "http://attackofthecute.com/on/?i=3493",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 18,
  :title => "Beagal Puppies",
  :file_name => "dog6.jpg",
  :source => "Chanda Hill Britton",
  :source_url => "https://www.pinterest.com/pin/537406168006237290/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 19,
  :title => "Beach Dog",
  :file_name => "dog7.jpg",
  :source => "weheartit",
  :source_url => "http://weheartit.com/entry/47917058",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 20,
  :title => "Laying Down Dog",
  :file_name => "dog8.jpg",
  :source => "All Puppies",
  :source_url => "http://all-puppies.com/funny-cute-pembroke-welsh-corgi-puppies-images.html",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 21,
  :title => "Sleeping in Food",
  :file_name => "dog9.jpg",
  :source => "Funny Puppy Site",
  :source_url => "http://www.funnypuppysite.com/pictures/Food_Is_Sleepy.htm",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 22,
  :title => "Husky",
  :file_name => "dog10.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/pin/310466968033058624/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 23,
  :title => "Pug",
  :file_name => "dog11.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/sundoc/boxer-babies/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 24,
  :title => "Ball in Mouth",
  :file_name => "dog12.jpg",
  :source => "Purina",
  :source_url => "http://www.purina.com.au/dogs/care/active/playful",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 25,
  :title => "Sad Puppy",
  :file_name => "dog13.jpg",
  :source => "Pintrest",
  :source_url => "https://www.pinterest.com/pin/397935317046774404/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 26,
  :title => "Sleeping in a Field",
  :file_name => "dog14.jpg",
  :source => "Kelcorov Borzoi",
  :source_url => "https://www.facebook.com/KelcorovBorzoi",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 27,
  :title => "Food on the Paw",
  :file_name => "dog15.jpg",
  :source => "Ashely Burns",
  :source_url => "https://www.youtube.com/watch?v=x2oBxj2Ah6k",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 28,
  :title => "Longing",
  :file_name => "dog16.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 29,
  :title => "Looking Around",
  :file_name => "dog17.jpg",
  :source => "Cute Puppy Dog",
  :source_url => "http://cutepuppydog.net/wallpapers/cute_little_puppy_dog_Labrador.html",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 30,
  :title => "Two Puppies",
  :file_name => "dog18.jpg",
  :source => "Her Campus",
  :source_url => "http://www.hercampus.com/school/emerson/adorable-animals-encourage-you-during-finals-week",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 31,
  :title => "Rose Puppy",
  :file_name => "dog19.jpg",
  :source => "Tumblr",
  :source_url => "http://animalswearingbowties.tumblr.com/post/34782695124",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 32,
  :title => "Rose Dog",
  :file_name => "dog20.jpg",
  :source => "weheartit",
  :source_url => "http://weheartit.com/tag/dog%20with%20rose",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 33,
  :title => "Kissing Puppies",
  :file_name => "dog21.jpg",
  :source => "Buzz Net",
  :source_url => "http://sarascoggins.buzznet.com/photos/53cuddlinganimalstob/?id=68120398",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 34,
  :title => "Sleeping Puppy",
  :file_name => "dog22.jpg",
  :source => "PBS",
  :source_url => "http://www.pbs.org/wnet/nature/episodes/why-we-love-cats-and-dogs/important-pet-quotes-in-history/8597/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 35,
  :title => "Licking Puppy",
  :file_name => "dog23.jpg",
  :source => "Cutest Paw",
  :source_url => "http://www.cutestpaw.com/images/dog-puppy-puppies/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 36,
  :title => "Toy in the Mouth",
  :file_name => "dog24.jpg",
  :source => "fanpop",
  :source_url => "http://www.fanpop.com/clubs/dogs/images/33995803/title/puppy-wallpaper",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 37,
  :title => "Sink Dog",
  :file_name => "dog25.jpg",
  :source => "Daily Picks and Flicks",
  :source_url => "http://dailypicksandflicks.com/2011/12/12/daily-picdump-333/cute-puppy-in-sink/",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 38,
  :title => "Leaping Fox",
  :file_name => "fox1.jpg",
  :source => "List of Images",
  :source_url => "http://www.listofimages.com/fox-grass-jumps.html",
  :categories => [
    "Cute",
    "Fox",
  ]
)

seed(
  :id => 39,
  :title => "Sleeping Koala",
  :file_name => "koala1.jpg",
  :source => "Animal Pics",
  :source_url => "http://theanimals.pics/koala-desktop/15/angel-koala-bear-wallpaper/",
  :categories => [
    "Cute",
    "Fox",
  ]
)

seed(
  :id => 40,
  :title => "Tiny Monkey",
  :file_name => "monkey1.jpg",
  :source => "Go Mighty",
  :source_url => "http://gomighty.com/goal/171/",
  :categories => [
    "Cute",
    "Monkey",
  ]
)

seed(
  :id => 41,
  :title => "Penguin Kiss",
  :file_name => "penguin1.jpg",
  :source => "Discovery",
  :source_url => "http://news.discovery.com/earth/global-warming/emperor-penguins-climate-change-120621.htm",
  :categories => [
    "Cute",
    "Penguin",
  ]
)

seed(
  :id => 42,
  :title => "Baby Penguin",
  :file_name => "penguin2.jpg",
  :source => "AMO",
  :source_url => "http://amolife.com/image/animals/20-baby-animal-photos-to-make-your-day.html",
  :categories => [
    "Cute",
    "Penguin",
  ]
)

seed(
  :id => 43,
  :title => "Polar Bear",
  :file_name => "polarbear1.jpeg",
  :source => "balfourbig6",
  :source_url => "http://balfourbig6.blogspot.com/2010/05/do-you-know-that-polar-bears-are-dying.html",
  :categories => [
    "Cute",
    "Polar Bear",
  ]
)

seed(
  :id => 44,
  :title => "Kissing Seals",
  :file_name => "seal1.jpg",
  :source => "Fun Cram",
  :source_url => "http://funcram.com/pictures/animals-kissing.html",
  :categories => [
    "Cute",
    "Seal",
  ]
)

seed(
  :id => 45,
  :title => "Snow Leopard",
  :file_name => "snowleopard1.jpg",
  :source => "WWF",
  :source_url => "http://www.wwf.org.uk/wildlife/snow_leopard/",
  :categories => [
    "Cute",
    "Snow Leopard",
  ]
)

seed(
  :id => 46,
  :title => "Baby Teacup Pig",
  :file_name => "teacuppig1.jpg",
  :source => "weheartit",
  :source_url => "http://weheartit.com/tag/pig%20cute",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 47,
  :title => "Holi Teacup Pigs",
  :file_name => "teacuppig2.jpg",
  :source => "Cool Chaser",
  :source_url => "http://www.coolchaser.com/themes/show/371468",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 48,
  :title => "Sleeping Teacup Pig",
  :file_name => "teacuppig3.jpg",
  :source => "Teacup Pig Farm",
  :source_url => "http://teacuppigfarm.com/teacup-pig-pictures/",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 49,
  :title => "Twin Turtles",
  :file_name => "turtle1.jpg",
  :source => "Orlando Sentinel",
  :source_url => "http://www.orlandosentinel.com/topic/ktla-turtles-salmonella,0,817711.story",
  :categories => [
    "Cute",
    "Turtle",
  ]
)

seed(
  :id => 50,
  :title => "Twin Baby Turtles",
  :file_name => "turtle2.jpeg",
  :source => "Free-Curtis",
  :source_url => "http://www.free-picture.net/reptiles/Turtles/sea-turtle-baby.jpg.html",
  :categories => [
    "Cute",
    "Turtle",
  ]
)

seed(
  :id => 51,
  :title => "",
  :file_name => "puppy1.jpg",
  :categories => []
)

seed(
  :id => 52,
  :title => "",
  :file_name => "puppy2.jpg",
  :categories => []
)

seed(
  :id => 53,
  :title => "",
  :file_name => "puppy3.jpg",
  :categories => []
)

seed(
  :id => 54,
  :title => "",
  :file_name => "puppy4.jpg",
  :categories => []
)

seed(
  :id => 55,
  :title => "",
  :file_name => "puppy5.jpeg",
  :categories => []
)

seed(
  :id => 56,
  :title => "",
  :file_name => "puppy6.jpg",
  :categories => []
)

seed(
  :id => 57,
  :title => "",
  :file_name => "puppy7.jpg",
  :categories => []
)

seed(
  :id => 58,
  :title => "",
  :file_name => "puppy8.jpg",
  :categories => []
)

seed(
  :id => 59,
  :title => "",
  :file_name => "puppy9.jpg",
  :categories => []
)

seed(
  :id => 60,
  :title => "",
  :file_name => "puppy10.jpg",
  :categories => []
)

seed(
  :id => 61,
  :title => "",
  :file_name => "puppy11.jpg",
  :categories => []
)

seed(
  :id => 62,
  :title => "",
  :file_name => "puppy12.jpg",
  :categories => []
)

seed(
  :id => 63,
  :title => "",
  :file_name => "puppy13.jpg",
  :categories => []
)

seed(
  :id => 64,
  :title => "",
  :file_name => "puppy14.jpg",
  :categories => []
)

seed(
  :id => 65,
  :title => "",
  :file_name => "puppy15.jpg",
  :categories => []
)

seed(
  :id => 66,
  :title => "",
  :file_name => "puppy16.jpeg",
  :categories => []
)

seed(
  :id => 67,
  :title => "",
  :file_name => "puppy17.jpg",
  :categories => []
)

seed(
  :id => 68,
  :title => "",
  :file_name => "puppy18.jpg",
  :categories => []
)

seed(
  :id => 69,
  :title => "",
  :file_name => "puppy19.jpg",
  :categories => []
)

seed(
  :id => 70,
  :title => "",
  :file_name => "puppy20.jpg",
  :categories => []
)

seed(
  :id => 71,
  :title => "",
  :file_name => "puppy21.jpg",
  :categories => []
)

seed(
  :id => 72,
  :title => "",
  :file_name => "puppy22.jpg",
  :categories => []
)

seed(
  :id => 73,
  :title => "",
  :file_name => "puppy23.jpg",
  :categories => []
)

seed(
  :id => 74,
  :title => "",
  :file_name => "puppy24.jpg",
  :categories => []
)

seed(
  :id => 75,
  :title => "",
  :file_name => "puppy25.jpg",
  :categories => []
)

seed(
  :id => 76,
  :title => "",
  :file_name => "puppy26.jpg",
  :categories => []
)

seed(
  :id => 77,
  :title => "",
  :file_name => "puppy27.jpg",
  :categories => []
)

seed(
  :id => 78,
  :title => "",
  :file_name => "puppy28.jpg",
  :categories => []
)

seed(
  :id => 79,
  :title => "",
  :file_name => "puppy29.jpg",
  :categories => []
)

seed(
  :id => 80,
  :title => "",
  :file_name => "puppy30.jpg",
  :categories => []
)

seed(
  :id => 81,
  :title => "",
  :file_name => "puppy31.jpg",
  :categories => []
)

seed(
  :id => 82,
  :title => "",
  :file_name => "puppy32.jpg",
  :categories => []
)

seed(
  :id => 83,
  :title => "",
  :file_name => "puppy33.jpg",
  :categories => []
)

seed(
  :id => 84,
  :title => "",
  :file_name => "puppy34.jpg",
  :categories => []
)

seed(
  :id => 85,
  :title => "",
  :file_name => "puppy35.jpg",
  :categories => []
)

seed(
  :id => 86,
  :title => "",
  :file_name => "puppy36.jpg",
  :categories => []
)

seed(
  :id => 87,
  :title => "",
  :file_name => "puppy37.jpg",
  :categories => []
)

seed(
  :id => 88,
  :title => "",
  :file_name => "puppy38.jpeg",
  :categories => []
)

seed(
  :id => 89,
  :title => "",
  :file_name => "puppy39.jpg",
  :categories => []
)

seed(
  :id => 90,
  :title => "",
  :file_name => "puppy40.jpg",
  :categories => []
)

seed(
  :id => 91,
  :title => "",
  :file_name => "puppy41.jpg",
  :categories => []
)

seed(
  :id => 92,
  :title => "",
  :file_name => "puppy42.jpg",
  :categories => []
)

seed(
  :id => 93,
  :title => "",
  :file_name => "puppy43.jpeg",
  :categories => []
)

seed(
  :id => 94,
  :title => "",
  :file_name => "puppy44.jpg",
  :categories => []
)

seed(
  :id => 95,
  :title => "",
  :file_name => "puppy45.jpg",
  :categories => []
)

seed(
  :id => 96,
  :title => "",
  :file_name => "puppy46.jpg",
  :categories => []
)

seed(
  :id => 97,
  :title => "",
  :file_name => "puppy47.jpg",
  :categories => []
)

seed(
  :id => 98,
  :title => "",
  :file_name => "puppy48.jpg",
  :categories => []
)

seed(
  :id => 99,
  :title => "",
  :file_name => "puppy49.jpg",
  :categories => []
)

seed(
  :id => 100,
  :title => "",
  :file_name => "puppy50.jpg",
  :categories => []
)

seed(
  :id => 101,
  :title => "Winston at the Doctor",
  :file_name => "101.jpg",
  :source => "reddit",
  :source_url => "http://www.reddit.com/r/aww/comments/2efbru/winston_was_fearless_for_his_first_vet_exam/",
  :categories => []
)

seed(
  :id => 102,
  :title => "Cute Kitty",
  :file_name => "102.jpg",
  :source => "Tarsem Saini",
  :source_url => "http://www.desicomments.com/cute/cute-pet/",
  :categories => []
)

seed(
  :id => 103,
  :title => "Book Puppy",
  :file_name => "103.jpg",
  :source => "That Cute",
  :source_url => "http://thatcute.com/some-cute-pets-favorite-learning-1.html",
  :categories => []
)

seed(
  :id => 104,
  :title => "Bunny Puppy",
  :file_name => "104.jpg",
  :source => "Stick Boy Daily",
  :source_url => "hhttp://www.stickboydaily.com/really/in-pictures-some-seriously-cute-pets/",
  :categories => []
)

seed(
  :id => 105,
  :title => "Baby Pets",
  :file_name => "105.jpg",
  :source => "FanPop",
  :source_url => "http://www.fanpop.com/clubs/babies-pets-and-animals/images/16883289/title/cute-photo",
  :categories => []
)

seed(
  :id => 106,
  :title => "Baby Pets",
  :file_name => "106.jpg",
  :source => "Rinku Bal",
  :source_url => "http://www.desicomments.com/pets/cute-pets/",
  :categories => []
)

seed(
  :id => 107,
  :title => "Baby Mouse",
  :file_name => "107.jpg",
  :source => "xxrobot",
  :source_url => "https://www.flickr.com/photos/robo7/2372392467/in/photostream/",
  :categories => []
)

seed(
  :id => 108,
  :title => "White Puppy",
  :file_name => "108.jpg",
  :source => "LIFEDaily",
  :source_url => "http://www.lifedaily.com/do-you-own-the-cutest-dog-in-the-world/",
  :categories => []
)

seed(
  :id => 109,
  :title => "Confused Terrier",
  :file_name => "109.jpg",
  :source => "LIFEDaily",
  :source_url => "http://www.lifedaily.com/do-you-own-the-cutest-dog-in-the-world/",
  :categories => []
)

seed(
  :id => 110,
  :title => "Shih Tzu",
  :file_name => "110.jpg",
  :source => "LIFEDaily",
  :source_url => "http://www.lifedaily.com/do-you-own-the-cutest-dog-in-the-world/",
  :categories => []
)

seed(
  :id => 111,
  :title => "Husky",
  :file_name => "111.jpg",
  :source => "cutprintfilm",
  :source_url => "http://cutprintfilm.com/wp-content/uploads/2014/03/41.jpg?w=300",
  :categories => []
)

seed(
  :id => 112,
  :title => "Parakeet",
  :file_name => "112.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-1/",
  :categories => []
)

seed(
  :id => 113,
  :title => "Bunny",
  :file_name => "113.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-2/",
  :categories => []
)

seed(
  :id => 114,
  :title => "Chick",
  :file_name => "114.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-3/",
  :categories => []
)

seed(
  :id => 115,
  :title => "Gofer",
  :file_name => "115.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-4/",
  :categories => []
)

seed(
  :id => 116,
  :title => "Big Bunny",
  :file_name => "116.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-6/",
  :categories => []
)

seed(
  :id => 117,
  :title => "Lion Cubs",
  :file_name => "117.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-7/",
  :categories => []
)

seed(
  :id => 118,
  :title => "Wabbit",
  :file_name => "118.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-8/",
  :categories => []
)

seed(
  :id => 119,
  :title => "Kittens",
  :file_name => "119.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-9/",
  :categories => []
)

seed(
  :id => 120,
  :title => "White Mouse",
  :file_name => "120.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-10/",
  :categories => []
)

seed(
  :id => 121,
  :title => "Owly",
  :file_name => "121.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-11/",
  :categories => []
)

seed(
  :id => 122,
  :title => "Baby Bunny",
  :file_name => "122.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-12/",
  :categories => []
)

seed(
  :id => 123,
  :title => "Hiding Kitty",
  :file_name => "123.jpg",
  :source => "Daily Fun Dose",
  :source_url => "http://www.dailyfundose.com/2011/09/super-cute-pets/dailyfundose_com-super-cute-pet-13/",
  :categories => []
)

seed(
  :id => 124,
  :title => "Sleeping pets",
  :file_name => "124.jpg",
  :source => "omgcutethings",
  :source_url => "http://omgcutethings.com/wp-content/uploads/2013/08/cute-pets-001-08172013.jpg",
  :categories => []
)

seed(
  :id => 125,
  :title => "Mama dog",
  :file_name => "125.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 126,
  :title => "Fat Dog",
  :file_name => "126.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 127,
  :title => "Mountain dogs",
  :file_name => "127.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 128,
  :title => "Baby Husky",
  :file_name => "128.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 129,
  :title => "Fluffy dog",
  :file_name => "129.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 130,
  :title => "Rawrr",
  :file_name => "130.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 131,
  :title => "Underside Kitty",
  :file_name => "131.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 132,
  :title => "Super fluffy dog",
  :file_name => "132.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 133,
  :title => "Guitar Pup",
  :file_name => "133.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 134,
  :title => "Teenie Puppy",
  :file_name => "134.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 135,
  :title => "Licking Puppy",
  :file_name => "135.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 136,
  :title => "Snow Nose",
  :file_name => "136.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 137,
  :title => "Sleeping Puppy",
  :file_name => "137.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 138,
  :title => "Cute Puppy",
  :file_name => "138.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 139,
  :title => "Hair Do Puppy",
  :file_name => "139.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 140,
  :title => "Micro Puppy",
  :file_name => "140.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 141,
  :title => "Cute Kitty",
  :file_name => "141.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 142,
  :title => "Pumpking Dog",
  :file_name => "142.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 143,
  :title => "Fluffy Puppies",
  :file_name => "143.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 144,
  :title => "Sink Ducklings",
  :file_name => "144.jpg",
  :source => "igirlsgames",
  :source_url => "http://www.igirlsgames.com/member/blog/post/uid/97418/pid/173041/",
  :categories => []
)

seed(
  :id => 145,
  :title => "Bucket O Kitties",
  :file_name => "145.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)

seed(
  :id => 146,
  :title => "Rug Dog",
  :file_name => "146.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)

seed(
  :id => 147,
  :title => "Curious Kitten",
  :file_name => "147.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)

seed(
  :id => 148,
  :title => "Lying Kitten",
  :file_name => "148.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)

seed(
  :id => 149,
  :title => "Puppy",
  :file_name => "149.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)

seed(
  :id => 150,
  :title => "Snow Dog",
  :file_name => "150.jpg",
  :source => "honeythediva",
  :source_url => "https://honeythediva.wordpress.com/category/cute-pets/",
  :categories => []
)