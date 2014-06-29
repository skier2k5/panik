class CreatePageview < ActiveRecord::Migration
  def change
    create_table :pageviews do |t|
      t.string :uri
      t.references :arrival

      t.timestamps
    end
    add_index :pageviews, :uri
    add_index :pageviews, :arrival_id
    add_index :pageviews, :created_at
    add_index :pageviews, :updated_at
  end
end
