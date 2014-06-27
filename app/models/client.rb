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
end
