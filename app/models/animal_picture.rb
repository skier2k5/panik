class AnimalPicture < ActiveRecord::Base
  has_many :animal_categories, :through => :animal_picture_categories
  has_one :voting_aggregate
end
