puts "Importing Clients" unless Rails.env.test?

Client.create_or_update(
  :id => 1,
  :name => "panik-media",
  :host_name => "panik-media.com",
  :title => "Panik Media",
  :view_path => "panik_media"
)

Client.create_or_update(
  :id => 2,
  :name => "celebheadlines",
  :host_name => "celebheadlines.com",
  :title => "Celeberity Headlines",
  :view_path => "celeb_headlines"
)

Client.create_or_update(
  :id => 3,
  :name => "kutorable",
  :host_name => "kutorable.com",
  :title => "Kutorable Pets",
  :view_path => "kutorable"
)
