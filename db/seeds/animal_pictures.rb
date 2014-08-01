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

