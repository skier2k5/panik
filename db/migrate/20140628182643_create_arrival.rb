class CreateArrival < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.text :uri
      t.string :ip
      t.string :user_agent
      t.string :referer
      t.references :client
      t.references :traffic_source

      t.timestamps
    end
    add_index :arrivals, :client_id
    add_index :arrivals, :traffic_source_id
    add_index :arrivals, :created_at
    add_index :arrivals, :updated_at
  end
end
