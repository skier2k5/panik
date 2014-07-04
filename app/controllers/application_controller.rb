class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_client

  def current_arrival
  end

  private

  def set_client
    if Rails.env.development?
      if request.subdomains.blank?
        client = request.domain
      else
        client = request.subdomains.first
      end

      client = client.blank? ? "" : client.gsub(/\..+/, '')
    else
      raise ArgumentError, "Client env variable not set" if ENV['CLIENT'].blank?

      client = ENV['CLIENT']
    end

    Client.current = client

    prepend_view_path(Client.current.search_path)
  end
end
