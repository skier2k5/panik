namespace :rss_feeds do
  RSS_URLS = {
    "celebheadlines" => [
      "http://rss.people.com/web/people/rss/topheadlines/index.xml",
    ],
  }

  namespace :ch do
    desc "Pull all celeb headlines RSS feeds"
    task :pull_all => :environment do
      feeds = Feedjira::Feed.fetch_and_parse RSS_URLS["celebheadlines"]
      feeds.each do |url, feed|
        feed.entries.each do |entry|
          hashed_headline = Digest::MD5.hexdigest("#{entry.title}|#{entry.summary}")
          exists = CelebHeadline.where(:hashed_headline => hashed_headline).first
          if !exists
            celeb_headline = CelebHeadline.create!(
              :title => entry.title,
              :url => entry.url,
              :posted_at => entry.published,
              :source => "people.com",
              :hashed_headline => hashed_headline
            )
            categories = entry.categories.first
            categories = categories.try(:split, ", ")
            categories.each do |category_name|
              category = Category.where(:name => category_name).first
              category = Category.create!(:name => category_name) if !category
              CelebHeadlineCategory.create!(
                :category_id => category.id,
                :celeb_headline_id => celeb_headline.id
              )
            end
          end
        end
      end
    end
  end
end
