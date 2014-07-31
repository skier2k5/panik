puts "Importing Animal Pictures" unless Rails.env.test?

def seed(opts)
  AnimalPicture.create_or_update(opts)
end

seed(
  :id => 1,
  :title => "Fluffy Dog",
  :file_name => "fluffy_dog.jpg",
)

seed(
  :id => 2,
  :title => "Smart Dog",
  :file_name => "smart_dog.jpg",
)

seed(
  :id => 3,
  :title => "Lots of Dogs",
  :file_name => "cute_dogs.jpg",
)

seed(
  :id => 4,
  :title => "Cute Dog",
  :file_name => "cute_dog.jpg",
)

seed(
  :id => 5,
  :title => "Bear Dog",
  :file_name => "bear_dog.jpg",
)

