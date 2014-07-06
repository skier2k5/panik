class CelebHeadline < ActiveRecord::Base
  has_many :categories, :through => :celeb_headline_categories
end
