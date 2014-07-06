class Category < ActiveRecord::Base
  has_many :celeb_headlines, :through => :celeb_headline_categories
end
