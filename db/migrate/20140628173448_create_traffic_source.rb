class CreateTrafficSource < ActiveRecord::Migration
  def change
    create_table :traffic_sources do |t|
      t.string :name
    end
  end
end
