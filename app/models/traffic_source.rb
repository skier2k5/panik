class TrafficSource < ActiveRecord::Base
  def self.find_by_name(name)
    Rails.cache.fetch("traffic_source_name_#{name}") do
      self.where(:name => name).first
    end
  end

  def self.find_by_id(source_id)
    Rails.cache.fetch("traffic_source_id_#{source_id}") do
      self.where(:id => source_id).first
    end
  end
end
