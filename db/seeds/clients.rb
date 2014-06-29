puts "Importing Clients" unless Rails.env.test?

Client.create_or_update(
  :id => 1,
  :name => "panik-media",
  :host_name => "panik-media.com"
)
