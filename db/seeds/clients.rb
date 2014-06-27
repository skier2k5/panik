puts "Importing Clients" unless Rails.env.test?

Client.create_or_update(
  :id => 1,
  :name => "panik",
  :host_name => "panik.com"
)
