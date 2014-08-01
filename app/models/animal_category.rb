class AnimalCategory < ActiveRecord::Base
  has_many :animal_pictures, :through => :animal_picture_categories
end
