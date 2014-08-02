class Client < ActiveRecord::Base
  def self.current=(client_name)
    return Thread.current[:current_client] if Thread.current[:current_client]
    client = Client.where(:name => client_name).first
    raise ArgumentError, "Unknown Client: #{client_name}" unless client

    Thread.current[:current_client] = client
  end

  def self.current
    Thread.current[:current_client]
  end

  def self.reset_client(name)
    Thread.current[:current_client] = nil
    Client.current = name
  end

  def search_path
    "#{Rails.root}/app/views/#{self.view_path}"
  end
end
