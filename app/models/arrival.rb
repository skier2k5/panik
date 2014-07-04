class Arrival < ActiveRecord::Base
  has_many :pageviews

  def self.find_recent_for_user(arrival_id, user_agent, ip)
    self.where(:id => arrival_id).first ||
    self.where(:user_agent => user_agent)
        .where(:ip => ip)
        .where(:client_id => Client.current.id)
        .where("created_at > (NOW() - INTERVAL 1 DAY)")
        .order("created_at desc")
        .first
  end
end
