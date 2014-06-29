puts "Importing Traffic Sources" unless Rails.env.test?

TrafficSource.create_or_update(
  :id => 1,
  :name => "panik facebook"
)
