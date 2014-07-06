class CreateHeadlineClicks < ActiveRecord::Migration
  def change
    create_table :headline_clicks do |t|
      t.integer :arrival_id, :null => false
      t.integer :celeb_headline_id, :null => false

      t.timestamps
    end
    add_index :headline_clicks, :arrival_id
    add_index :headline_clicks, :celeb_headline_id
    add_index :headline_clicks, :created_at
  end
end
