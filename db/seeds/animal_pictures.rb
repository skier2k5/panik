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
  :source => "Reddit",
  :source_url => "reddit.com",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 2,
  :title => "Smart Dog",
  :file_name => "smart_dog.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 3,
  :title => "Lots of Dogs",
  :file_name => "cute_dogs.jpg",
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
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 5,
  :title => "Bear Dog",
  :file_name => "bear_dog.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 6,
  :title => "Dog in a Box",
  :file_name => "animal1.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 7,
  :title => "Bunny with a chip",
  :file_name => "bunny1.jpg",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 8,
  :title => "Bunnies",
  :file_name => "bunny2.jpeg",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 9,
  :title => "Bunny in a field",
  :file_name => "bunny3.jpg",
  :categories => [
    "Cute",
    "Bunny",
  ]
)

seed(
  :id => 10,
  :title => "Cat in a field",
  :file_name => "cat1.jpg",
  :categories => [
    "Cute",
    "Cat",
  ]
)

seed(
  :id => 11,
  :title => "Cat Paw",
  :file_name => "cat2.jpeg",
  :categories => [
    "Cute",
    "Cat",
  ]
)

seed(
  :id => 12,
  :title => "Baby Cheetahs",
  :file_name => "cheetah1.jpg",
  :categories => [
    "Cute",
    "Cheetah",
  ]
)

seed(
  :id => 13,
  :title => "Drinking Cheetah",
  :file_name => "cheetah2.jpeg",
  :categories => [
    "Majestic",
    "Cheetah",
  ]
)

seed(
  :id => 14,
  :title => "Sleeping Puppy",
  :file_name => "dog2.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 15,
  :title => "Flower Dog",
  :file_name => "dog3.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 16,
  :title => "Multiple Animals",
  :file_name => "dog4.jpg",
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
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 18,
  :title => "Beagal Puppies",
  :file_name => "dog6.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 19,
  :title => "Beach Dog",
  :file_name => "dog7.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 20,
  :title => "Laying Down Dog",
  :file_name => "dog8.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 21,
  :title => "Sleeping in Food",
  :file_name => "dog9.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 22,
  :title => "Husky",
  :file_name => "dog10.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 23,
  :title => "Pug",
  :file_name => "dog11.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 24,
  :title => "Ball in Mouth",
  :file_name => "dog12.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 25,
  :title => "Sad Puppy",
  :file_name => "dog13.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 26,
  :title => "Sleeping in a Field",
  :file_name => "dog14.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 27,
  :title => "Food on the Paw",
  :file_name => "dog15.jpg",
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
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 30,
  :title => "Two Puppies",
  :file_name => "dog18.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 31,
  :title => "Rose Puppy",
  :file_name => "dog19.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 32,
  :title => "Rose Dog",
  :file_name => "dog20.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 33,
  :title => "Kissing Puppies",
  :file_name => "dog21.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 34,
  :title => "Sleeping Puppy",
  :file_name => "dog22.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 35,
  :title => "Licking Puppy",
  :file_name => "dog23.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 36,
  :title => "Toy in the Mouth",
  :file_name => "dog24.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 37,
  :title => "Sink Dog",
  :file_name => "dog25.jpg",
  :categories => [
    "Cute",
    "Dog",
  ]
)

seed(
  :id => 38,
  :title => "Leaping Fox",
  :file_name => "fox1.jpg",
  :categories => [
    "Cute",
    "Fox",
  ]
)

seed(
  :id => 39,
  :title => "Sleeping Koala",
  :file_name => "koala1.jpg",
  :categories => [
    "Cute",
    "Fox",
  ]
)

seed(
  :id => 40,
  :title => "Tiny Monkey",
  :file_name => "monkey1.jpg",
  :categories => [
    "Cute",
    "Monkey",
  ]
)

seed(
  :id => 41,
  :title => "Penguin Kiss",
  :file_name => "penguin1.jpg",
  :categories => [
    "Cute",
    "Penguin",
  ]
)

seed(
  :id => 42,
  :title => "Baby Penguin",
  :file_name => "penguin2.jpg",
  :categories => [
    "Cute",
    "Penguin",
  ]
)

seed(
  :id => 43,
  :title => "Polar Bear",
  :file_name => "polarbear1.jpeg",
  :categories => [
    "Cute",
    "Polar Bear",
  ]
)

seed(
  :id => 44,
  :title => "Kissing Seals",
  :file_name => "seal1.jpg",
  :categories => [
    "Cute",
    "Seal",
  ]
)

seed(
  :id => 45,
  :title => "Snow Leopard",
  :file_name => "snowleopard1.jpg",
  :categories => [
    "Cute",
    "Snow Leopard",
  ]
)

seed(
  :id => 46,
  :title => "Baby Teacup Pig",
  :file_name => "teacuppig1.jpg",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 47,
  :title => "Holi Teacup Pigs",
  :file_name => "teacuppig2.jpg",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 48,
  :title => "Sleeping Teacup Pig",
  :file_name => "teacuppig3.jpg",
  :categories => [
    "Cute",
    "Teacup Pig",
  ]
)

seed(
  :id => 49,
  :title => "Twin Turtles",
  :file_name => "turtle1.jpg",
  :categories => [
    "Cute",
    "Turtle",
  ]
)

seed(
  :id => 50,
  :title => "Twin Baby Turtles",
  :file_name => "turtle2.jpeg",
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

