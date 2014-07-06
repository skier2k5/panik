class CelebHeadlineCategory < ActiveRecord::Base
  belongs_to :categories
  belongs_to :celeb_headlines
end
