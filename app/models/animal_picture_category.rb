class AnimalPictureCategory < ActiveRecord::Base
  belongs_to :animal_categories
  belongs_to :animal_pictures
end
